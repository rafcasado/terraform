//Main Cluster K8s Variables
variable "name_gke" {
  type    = "string"
  default = "k8s-cluster"
}

variable "zone_gke" {
  default = "us-central1-c"
}

variable "machinetype_gke" {
  default = "n1-standard-4"
}

variable "disk_size_gb" {
  default = "100"
}

//Provider Variables
variable "credentials_gcp" {
  default = "/home/rgoncalves/providers/gcp/Projeto-DevOps.json"
}

variable "projectid_gcp" {
  default = "concrete-list-198618"
}

variable "regiongcp" {
  default = "us-central1"
}

//Main Variables
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
