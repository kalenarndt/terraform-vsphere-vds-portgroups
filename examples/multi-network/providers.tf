terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">=1.25.0"
    }
  }
}


provider "vsphere" {
  user                 = "administrator@vsphere.local"
  password             = "mypassword"
  vsphere_server       = "vc.myvc.com"
  allow_unverified_ssl = true
}