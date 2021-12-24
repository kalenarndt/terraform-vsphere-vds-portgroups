module "cts_networks" {
  source     = "kalenarndt/vds-portgroups/vsphere"
  datacenter = "Black Mesa"
  vds        = "Sector-F-VDS"
  network = {
    "cts-dev" = {
      name    = "cts-dev"
      vlan_id = 305
    },
    "cts-apps" = {
      name            = "cts-app"
      netflow_enabled = true
      vlan_range = {
        prod = {
          max_vlan = 304
          min_vlan = 300
        }
      }
    },
  }
}