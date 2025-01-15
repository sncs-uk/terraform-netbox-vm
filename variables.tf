variable hostname {
  type        = string
  description = "The hostname for the VM (doubles as the VM name)."
}

variable vCPUs {
  type        = number
  description = "The number of vCPUs to assign to the VM."
  default     = 2
}

variable memory {
  type        = number
  description = "The amount of memory in MB to assign to the VM."
  default     = 2048
}

variable cluster_name {
  type        = string
  description = "The vSphere Cluster on which the VM will be created."
}

variable disk_size {
  type        = number
  description = "The size of the OS disk in GB. Must be a whole number."
  default     = null
}

variable additional_disks {
  type        = list(object({
    label             = string
    size              = number
    thin_provisioned  = optional(bool, true)
    eagerly_scrub     = optional(bool, false)
  }))
  description = "List of additional disks to add to the VM."
  default     = []
}
