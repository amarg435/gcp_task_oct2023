output "network" {
  value       = module.vpc.network_id
  description = "The VPC resource being created"
}

output "subnet1" {
  value       = module.subnet1.subnet_id
  description = "The created subnet resources"
}

output "subnet2" {
  value       = module.subnet2.subnet_id
  description = "The created subnet resources"
}

output "vm_ip1" {
  #value = module.vm1.network_interface[0].access_config[0].nat_ip
  value = module.vm1.vm_ip
}

output "vm_ip2" {
  value = module.vm2.vm_ip
}

#output "disk_name1" {
#  value = module.vm1.disk_name
#}

#output "disk_name2" {
#  value = module.vm2.disk_name
#}
