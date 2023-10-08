output "vm_ip" {
  value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

#output "disk_name" {
#  value = google_compute_disk.disk_attach.id
#}
