/**
 * # Netbox VM terraform module
 *
 * This terraform module creates a vm record within a given Netbox instance
 *
 */

terraform {
  required_providers {
    netbox = {
      source  = "e-breuninger/netbox"
      version = ">= 3.10.0"
    }
  }
}

data netbox_cluster cluster {
  name    = var.cluster_name
}

resource netbox_virtual_machine vm {
  name              = var.hostname
  cluster_id        = data.netbox_cluster.cluster.id
  status            = "active"
  vcpus             = var.vCPUs
  memory_mb         = var.memory
}

resource netbox_virtual_disk disk {
  name                = "Disk 1"
  description         = "OS Disk"
  size_mb             = var.disk_size * 1000
  virtual_machine_id  = netbox_virtual_machine.vm.id
}

resource netbox_virtual_disk additional_disks {
  for_each            = { for disk in var.additional_disks : disk.label => disk }

  name                = "Disk ${index(var.additional_disks, each.value) + 2}"
  description         = each.value.label
  size_mb             = each.value.size * 1000
  virtual_machine_id  = netbox_virtual_machine.vm.id
}

resource netbox_interface ens192 {
  name                = "ens192"
  virtual_machine_id  = netbox_virtual_machine.vm.id
}
