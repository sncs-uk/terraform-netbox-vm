<!-- BEGIN_TF_DOCS -->
# Netbox VM terraform module

This terraform module creates a vm record within a given Netbox instance

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_netbox"></a> [netbox](#requirement\_netbox) | >= 3.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_netbox"></a> [netbox](#provider\_netbox) | >= 3.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [netbox_interface.ens192](https://registry.terraform.io/providers/e-breuninger/netbox/latest/docs/resources/interface) | resource |
| [netbox_virtual_disk.additional_disks](https://registry.terraform.io/providers/e-breuninger/netbox/latest/docs/resources/virtual_disk) | resource |
| [netbox_virtual_disk.disk](https://registry.terraform.io/providers/e-breuninger/netbox/latest/docs/resources/virtual_disk) | resource |
| [netbox_virtual_machine.vm](https://registry.terraform.io/providers/e-breuninger/netbox/latest/docs/resources/virtual_machine) | resource |
| [netbox_cluster.cluster](https://registry.terraform.io/providers/e-breuninger/netbox/latest/docs/data-sources/cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_disks"></a> [additional\_disks](#input\_additional\_disks) | List of additional disks to add to the VM. | <pre>list(object({<br/>    label             = string<br/>    size              = number<br/>    thin_provisioned  = optional(bool, true)<br/>    eagerly_scrub     = optional(bool, false)<br/>  }))</pre> | `[]` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The vSphere Cluster on which the VM will be created. | `string` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | The size of the OS disk in GB. Must be a whole number. | `number` | `null` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname for the VM (doubles as the VM name). | `string` | n/a | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of memory in MB to assign to the VM. | `number` | `2048` | no |
| <a name="input_vCPUs"></a> [vCPUs](#input\_vCPUs) | The number of vCPUs to assign to the VM. | `number` | `2` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_interface"></a> [interface](#output\_interface) | n/a |
| <a name="output_vm"></a> [vm](#output\_vm) | n/a |
<!-- END_TF_DOCS -->