module "machine" {
  source = "./modules/machine" # Caminho para o módulo de máquinas

  servers = var.servers
}


