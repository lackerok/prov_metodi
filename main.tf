# Локальный модуль VPC
module "vpc_dev" {
  source   = "./vpc"
  env_name = "develop-hw4"
  zone     = var.default_zone
  cidr     = "10.0.1.0/24"
}

# Шаблон cloud-init с передачей SSH-ключа
data "template_file" "cloudinit" {
  template = file("${path.module}/cloud-init.yml")
  vars = {
    ssh_public_key = file(pathexpand(var.ssh_public_key))
  }
}

# 1. ВМ маркетинга
module "marketing_vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "marketing"
  network_id     = module.vpc_dev.subnet.network_id
  subnet_zones   = [var.default_zone]
  subnet_ids     = [module.vpc_dev.subnet.id]
  instance_name  = "web"
  instance_count = 1
  image_family   = "ubuntu-2204-lts"
  public_ip      = true

  labels = {
    project = "marketing"
  }

  metadata = {
    serial-port-enable = 1
    user-data          = data.template_file.cloudinit.rendered
  }
}

# 2. ВМ аналитики
module "analytics_vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "analytics"
  network_id     = module.vpc_dev.subnet.network_id
  subnet_zones   = [var.default_zone]
  subnet_ids     = [module.vpc_dev.subnet.id]
  instance_name  = "web"
  instance_count = 1
  image_family   = "ubuntu-2204-lts"
  public_ip      = true

  labels = {
    project = "analytics"
  }

  metadata = {
    serial-port-enable = 1
    user-data          = data.template_file.cloudinit.rendered
  }
}
