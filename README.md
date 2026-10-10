# Задание 1
<img width="1674" height="251" alt="image" src="https://github.com/user-attachments/assets/d583c6e5-79ef-45c2-9af5-81bdc82cc772" />
<img width="577" height="292" alt="image" src="https://github.com/user-attachments/assets/9e106203-9ee1-4be9-b3c1-6fd1fad14fbf" />
<img width="599" height="322" alt="image" src="https://github.com/user-attachments/assets/f5af747e-1e41-4811-b14e-edae877f0464" />
<img width="475" height="53" alt="image" src="https://github.com/user-attachments/assets/2f1d16e1-d4ca-40bf-b299-14b6afa37d7c" />
<img width="943" height="1005" alt="image" src="https://github.com/user-attachments/assets/d16e63f7-306a-4491-96a3-56dbc66b3ca8" />
<img width="507" height="992" alt="image" src="https://github.com/user-attachments/assets/ec6ec894-daf7-4421-9160-830fd271a82d" />
<img width="497" height="937" alt="image" src="https://github.com/user-attachments/assets/f19c5b95-3689-4f56-ac91-05d823bf7ffc" />
```
{
  "all" = [
    {
      "allow_recreate" = tobool(null)
      "allow_stopping_for_update" = true
      "boot_disk" = tolist([
        {
          "auto_delete" = true
          "device_name" = "fhmg8m7dsfvm3a5ubhlu"
          "disk_id" = "fhmg8m7dsfvm3a5ubhlu"
          "initialize_params" = tolist([
            {
              "block_size" = 4096
              "description" = ""
              "image_id" = "fd8iej0ml2kuiu1tq40u"
              "kms_key_id" = ""
              "name" = ""
              "size" = 10
              "snapshot_id" = ""
              "type" = "network-hdd"
            },
          ])
          "mode" = "READ_WRITE"
        },
      ])
      "created_at" = "2026-10-10T08:01:52Z"
      "description" = "TODO: description; {{terraform yyy managed}}"
      "filesystem" = toset([])
      "folder_id" = "b1g6n1tlln3k4duo7dnk"
      "fqdn" = "marketing-web-0.ru-central1.internal"
      "gpu_cluster_id" = ""
      "hardware_generation" = tolist([
        {
          "generation2_features" = tolist([])
          "legacy_features" = tolist([
            {
              "pci_topology" = "PCI_TOPOLOGY_V2"
            },
          ])
        },
      ])
      "hostname" = "marketing-web-0"
      "id" = "fhm2mf4l7ropc7mbaq8c"
      "labels" = tomap({
        "project" = "marketing"
      })
      "local_disk" = tolist([])
      "maintenance_grace_period" = ""
      "maintenance_policy" = tostring(null)
      "metadata" = tomap({
        "serial-port-enable" = "1"
        "user-data" = <<-EOT
        #cloud-config
        users:
          - name: ubuntu
            groups: sudo
            shell: /bin/bash
            sudo: ['ALL=(ALL) NOPASSWD:ALL']
            ssh-authorized-keys:
              - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE4p+OtRynHkWx9zCHJqhgAb6H0wkLRm6cK9Vv8hLH/g lackerokok@lackerokok-VirtualBox


        package_update: true
        package_upgrade: false

        packages:
          - nginx

        EOT
      })
      "metadata_options" = tolist([
        {
          "aws_v1_http_endpoint" = 1
          "aws_v1_http_token" = 2
          "aws_v2_http_endpoint" = 1
          "aws_v2_http_token" = 1
          "gce_http_endpoint" = 1
          "gce_http_token" = 1
        },
      ])
      "name" = "marketing-web-0"
      "network_acceleration_type" = "standard"
      "network_interface" = tolist([
        {
          "dns_record" = tolist([])
          "index" = 0
          "ip_address" = "10.0.1.9"
          "ipv4" = true
          "ipv6" = false
          "ipv6_address" = ""
          "ipv6_dns_record" = tolist([])
          "mac_address" = "d0:0d:2b:3c:95:3e"
          "nat" = true
          "nat_dns_record" = tolist([])
          "nat_ip_address" = "158.160.103.237"
          "nat_ip_version" = "IPV4"
          "security_group_ids" = toset(null) /* of string */
          "subnet_id" = "e9btqgq9pnliguljnk4i"
        },
      ])
      "placement_policy" = tolist([
        {
          "host_affinity_rules" = tolist([])
          "placement_group_id" = ""
          "placement_group_partition" = 0
        },
      ])
      "platform_id" = "standard-v1"
      "reserved_instance_pool_id" = ""
      "resources" = tolist([
        {
          "core_fraction" = 5
          "cores" = 2
          "gpus" = 0
          "memory" = 1
        },
      ])
      "scheduling_policy" = tolist([
        {
          "preemptible" = true
        },
      ])
      "secondary_disk" = toset([])
      "service_account_id" = ""
      "status" = "running"
      "timeouts" = null /* object */
      "zone" = "ru-central1-a"
    },
  ]
  "external_ip_address" = [
    "158.160.103.237",
  ]
  "fqdn" = [
    "marketing-web-0.ru-central1.internal",
  ]
  "internal_ip_address" = [
    "10.0.1.9",
  ]
  "labels" = [
    tomap({
      "project" = "marketing"
    }),
  ]
  "network_interface" = [
    tolist([
      {
        "dns_record" = tolist([])
        "index" = 0
        "ip_address" = "10.0.1.9"
        "ipv4" = true
        "ipv6" = false
        "ipv6_address" = ""
        "ipv6_dns_record" = tolist([])
        "mac_address" = "d0:0d:2b:3c:95:3e"
        "nat" = true
        "nat_dns_record" = tolist([])
        "nat_ip_address" = "158.160.103.237"
        "nat_ip_version" = "IPV4"
        "security_group_ids" = toset(null) /* of string */
        "subnet_id" = "e9btqgq9pnliguljnk4i"
      },
    ]),
  ]
}
```
# Задание 2
<img width="602" height="329" alt="image" src="https://github.com/user-attachments/assets/16f7dedc-f6a6-4335-89a4-22afad25b511" />
<img width="942" height="557" alt="image" src="https://github.com/user-attachments/assets/20bdb9a7-cc66-45c1-995f-73b39ede6128" />

# Задание 3
<img width="556" height="100" alt="image" src="https://github.com/user-attachments/assets/02f4f023-db4a-4dbd-96ad-a3c6e0ec8d66" />
<img width="732" height="295" alt="image" src="https://github.com/user-attachments/assets/fc5dfe26-b012-45fb-b732-d43207d0a4ae" />
<img width="909" height="474" alt="image" src="https://github.com/user-attachments/assets/d9a15cfd-1a45-4d57-a3d3-f7d7840315ed" />

# Список выполненных команд

```
Просмотр списка ресурсов в стейте
terraform state list

# 2. Удаление модуля VPC из стейта
terraform state rm module.vpc_dev

# 3. Удаление модулей ВМ из стейта
terraform state rm module.marketing_vm
terraform state rm module.analytics_vm

# 4. Проверка очистки стейта
terraform state list

# 5. Импорт ресурсов обратно в стейт
terraform import module.vpc_dev.yandex_vpc_network.network enp467dnplcabgrqc0r2
terraform import module.vpc_dev.yandex_vpc_subnet.subnet e9b0jvb5eoiviucv672c
terraform import 'module.marketing_vm.yandex_compute_instance.vm[0]' fhm2k3bpt521bi7evvj1
terraform import 'module.analytics_vm.yandex_compute_instance.vm[0]' fhmf4pik3egcfgkmnp07

# 6. Финальная проверка плана
terraform plan
```
