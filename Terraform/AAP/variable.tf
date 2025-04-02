variable "aap_username" {
  description = "AAP console admin"
  default = "admin"
}

variable "aap_password" {
    description = "AAP user paswd"
    default = "PASSWD"
}

variable "aap_host_url" {
    description = "URL for AAP"
    default = "https://aap-aap.apps.cluster-5ws62-1.dynamic.redhatworkshops.io"
}

variable "job_template_id" {
    description = "the job to launch"
    default = "58"
}

variable "ami_id" {
  description = "AMI ID"
  default = "ami-0c15e602d3d6c6c4a"
}

variable "subnet_prv1" {
  description = "Private Subnet 1"
  default = "subnet-06aa232b8e28dddfc"
}

variable "access" {
  description = "Access Key"
  default = "ACCESS"
}

variable "secret" {
  description = "Secret Key"
  default = "SECRET"
}
