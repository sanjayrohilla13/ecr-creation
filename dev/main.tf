module "ecr" {
  //for_each         = toset(["rohilla", "sanjay"])
  source           = "../ecr"
  count = local.repo_count
  application_name = var.application_name
  //repo_name        = each.key
  repo_name = var.repo_list[count.index]
  application_id   = var.application_id
  environment      = var.environment
  expiry_days      = 30
}