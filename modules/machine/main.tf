resource "hcloud_server" "servers" {
  for_each = { for s in var.servers : s.name => s }

  name        = each.value.name
  image       = each.value.image
  server_type = each.value.server_type
  location    = each.value.location
  ssh_keys    = [data.hcloud_ssh_key.existing_ssh_key.id]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }

  user_data = each.value.user_data
}
