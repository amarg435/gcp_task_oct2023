variable "instance_name" {
  default = "test-vm"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "zone" {
  default = "asia-south1"
}

variable "image" {
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "subnet_id" {
  default = ""
}

variable "network_id" {
  default = ""
}

variable "disk_name" {
  default = ""
}

variable "disk_type" {
  default = ""
}

variable "disk_zone" {
  default = ""
}

variable "disk_size" {
  default = ""
}
