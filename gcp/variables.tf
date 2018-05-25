//Provider Variables
variable "credentials_gcp" {
  default = "../providers/gcp/estudos-devops.json"
}

variable "projectid_gcp" {
  default = "estudos-devops"
}

variable "regiongcp" {
  default = "us-central1"
}

//Main Variables
variable "name" {
  type    = "string"
  default = "rancher"
}

variable "zone" {
  default = "us-central1-c"
}

variable "machinetype" {
  default = "n1-standard-1"
}

variable "image" {
  default = "ubuntu-1604-xenial-v20180522"
}

variable "gce_ssh_user" {
  description = "User for ssh-key authentication"
  default     = "rgoncalves"
}

variable "gce_ssh_pub_key_file" {
  description = "Path to file containing public key"
  default     = "/home/rgoncalves/.ssh/id_rsa.pub"
}

variable "gce_ssh_private_key_file" {
  description = "Path to file containing public key"
  default     = "/home/rgoncalves/.ssh/id_rsa"
}
