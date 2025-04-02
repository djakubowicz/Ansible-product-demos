terraform {
  required_providers {
   aap = {
        source = "ansible/aap"
        version = "1.1.2"
   }
 }
}

provider "aap" {
 host                 = var.aap_host_url
 username             = var.aap_username
 password             = var.aap_password
 timeout              = 10
}

resource "aap_inventory" "my_inventory" {
  name = "AXA_New_Inventory"
   depends_on = [
       time_sleep.instance
   ]
}


resource "aap_host" "create_host" {
  inventory_id = aap_inventory.my_inventory.id
#  name = "192.169.101.101"
   name         = aws_instance.example.public_ip
   depends_on = [
        aap_inventory.my_inventory
   ]
}

resource "aap_job" "run_job_template" {
  job_template_id = var.job_template_id
  inventory_id    = aap_inventory.my_inventory.id
  extra_vars = <<EOT
{
 "inventory": "${aap_inventory.my_inventory.name}"
}
EOT
depends_on = [
        aap_host.create_host
]
}
