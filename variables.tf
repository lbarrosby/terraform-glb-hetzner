
# Variáveis dos Servidores
variable "servers" {
  description = "Lista de servidores"
  type = list(object({
    name        = string
    image       = string
    server_type = string
    location    = string
    user_data   = string
  }))
}

