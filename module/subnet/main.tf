resource "google_compute_subnetwork" "subnet" {
  name          = var.name
  ip_cidr_range = var.subnet_cidr
  network       = var.vpc_id
  region        = var.region
}
