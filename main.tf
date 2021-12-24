data "vsphere_datacenter" "dc" {
  name = var.datacenter
}

data "vsphere_distributed_virtual_switch" "vds" {
  datacenter_id = data.vsphere_datacenter.dc.id
  name          = var.vds
}

resource "vsphere_distributed_port_group" "pg" {
  for_each                        = var.network
  distributed_virtual_switch_uuid = data.vsphere_distributed_virtual_switch.vds.id
  name                            = each.value.name
  type                            = each.value.type != "" ? each.value.type : "earlyBinding"
  description                     = each.value.description != null ? each.value.description : "Port Group for ${each.value.name}"
  netflow_enabled                 = each.value.netflow
  allow_promiscuous               = each.value.promiscious
  allow_mac_changes               = each.value.mac_changes
  allow_forged_transmits          = each.value.forged_transmits
  lacp_enabled                    = each.value.lacp
  lacp_mode                       = each.value.lacp_mode
  failback                        = each.value.failback
  teaming_policy                  = each.value.teaming_policy
  active_uplinks                  = each.value.active_uplinks
  standby_uplinks                 = each.value.standby_uplinks
  vlan_id                         = each.value.vlan_id

  dynamic "vlan_range" {
    for_each = each.value.vlan_range != null ? each.value.vlan_range : {}
    content {
      max_vlan = vlan_range.value.max_vlan
      min_vlan = vlan_range.value.min_vlan
    }
  }
}