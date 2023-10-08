resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["web"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network_id
    subnetwork = var.subnet_id

    access_config {
      // Ephemeral IP
    }
  }

  attached_disk {
    source      = google_compute_disk.disk_attach.self_link
    device_name = "data-disk-0"
    mode        = "READ_WRITE"
  }

  #disk {
  #  source      = resource.google_compute_disk.disk_attach.name
  #  auto_delete = false
  #  boot        = false
  #}
}

resource "google_compute_disk" "disk_attach" {
    name = var.disk_name
    type = var.disk_type
    zone = var.disk_zone
    size = var.disk_size
    #provisioned_iops = 2600
}