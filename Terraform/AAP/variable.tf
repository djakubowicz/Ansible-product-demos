variable "aap_username" {
  description = "AAP console admin"
  default = "ADMIN"
}

variable "aap_password" {
    description = "AAP user paswd"
    default = "NTU1OTkw"
}

variable "aap_host_url" {
    description = "URL for AAP"
    default = "https://aap-aap.apps.cluster-6ts44-1.dynamic.redhatworkshops.io"
}

variable "job_template_id" {
    description = "the job to launch"
    default = 61  
}

variable "ami_id" {
  description = "AMI ID"
  default = "ami-0c15e602d3d6c6c4a"
}

variable "subnet_prv1" {
  description = "Private Subnet 1"
  default = "subnet-0e39ff451e3d0d3eb"
}

variable "access" {
  description = "Access Key"
  default = [PUT ACCESS KEY HERE]
}

variable "secret" {
  description = "Secret Key"
  default = [PUT SECRET HERE]
}
