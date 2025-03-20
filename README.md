## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.50.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_machine"></a> [machine](#module\_machine) | ../machine | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_servers"></a> [servers](#input\_servers) | Lista de servidores | <pre>list(object({<br/>    name        = string<br/>    image       = string<br/>    server_type = string<br/>    location    = string<br/>    user_data   = string<br/>  }))</pre> | n/a | yes |

## Outputs

No outputs.
