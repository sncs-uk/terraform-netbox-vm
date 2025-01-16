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
  description = "The Cluster on which the VM will be located."
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

variable site_id {
  description = "Site ID in which to put the VM"
  type        = number
  default     = null
}
