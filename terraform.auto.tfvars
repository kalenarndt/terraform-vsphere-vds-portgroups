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
  }
}

datacenter = "Black Mesa"
dvs        = "Sector-F-DVS"
