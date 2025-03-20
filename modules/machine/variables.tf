variable "servers" {
  description = "Lista de servidores a serem criados"
  type = list(object({
    name        = string
    image       = string
    server_type = string
    location    = string
    user_data   = string  # Adicionando o campo user_data
  }))
}

