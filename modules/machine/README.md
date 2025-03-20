## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.50.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_server.server](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |
| [hcloud_ssh_key.existing_ssh_key](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/data-sources/ssh_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | Imagem do servidor | `string` | `"ubuntu-20.04"` | no |
| <a name="input_location"></a> [location](#input\_location) | Localização do data center | `string` | `"ash"` | no |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | Nome do servidor | `string` | `"server-01-terraform-minium-instance"` | no |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | Tipo do servidor | `string` | `"cpx11"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_server_ip"></a> [server\_ip](#output\_server\_ip) | n/a |
