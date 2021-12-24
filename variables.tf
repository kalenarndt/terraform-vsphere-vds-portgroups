
variable "datacenter" {
  type        = string
  description = "(Required) Name of the Datacenter where the Distributed Virtual Switch resides"
}

variable "vds" {
  type        = string
  description = "(Required) Name of the Virtual Distributed Switch where the Port Groups will be created"
}

variable "network" {
  type = map(object({
    name             = string
    type             = optional(string)
    description      = optional(string)
    vlan_id          = optional(number)
    vlan_range       = optional(map(map(any)))
    promiscious      = optional(bool)
    mac_changes      = optional(bool)
    forged_transmits = optional(bool)
    lacp             = optional(bool)
    lacp_mode        = optional(string)
    failback         = optional(bool)
    teaming_policy   = optional(string)
    netflow          = optional(bool)
    active_uplinks   = optional(list(string))
    standby_uplinks  = optional(list(string))
  }))
  description = "(Required) Map containing the configuration for the Distributed Switch Port Groups"
}