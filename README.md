# terraform-vsphere-vds-portgroups

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | >=1.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | 2.0.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_distributed_port_group.pg](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/distributed_port_group) | resource |
| [vsphere_datacenter.dc](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/datacenter) | data source |
| [vsphere_distributed_virtual_switch.vds](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/distributed_virtual_switch) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | (Required) Name of the Datacenter where the Distributed Virtual Switch resides | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | (Required) Map containing the configuration for the Distributed Switch Port Groups | <pre>map(object({<br>    name             = string<br>    type             = optional(string)<br>    description      = optional(string)<br>    vlan_id          = optional(number)<br>    vlan_range       = optional(map(map(any)))<br>    promiscious      = optional(bool)<br>    mac_changes      = optional(bool)<br>    forged_transmits = optional(bool)<br>    lacp             = optional(bool)<br>    lacp_mode        = optional(string)<br>    failback         = optional(bool)<br>    teaming_policy   = optional(string)<br>    netflow          = optional(bool)<br>    active_uplinks   = optional(list(string))<br>    standby_uplinks  = optional(list(string))<br>  }))</pre> | n/a | yes |
| <a name="input_vds"></a> [vds](#input\_vds) | (Required) Name of the Virtual Distributed Switch where the Port Groups will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pg"></a> [pg](#output\_pg) | Output for the Distributed Switch Port Groups that have been created |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
