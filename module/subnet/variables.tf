variable "subnet_cidr" {
  default = "10.10.10.0/24"
}

variable "vpc_id" {
  default = "google_compute_network.vpc.id"
}

variable "name" {
  default = ""
}

variable "region" {
  default = "asia-south1"
}

variable "region2" {
  default = "asia-south2"
}

variable "subnet_name_prefix" {
  default = "amar"
}
