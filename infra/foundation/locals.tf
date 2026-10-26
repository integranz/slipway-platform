# Values rendered from platform.yaml. Change them there and re-render with platform.cjs.
locals {
  platform    = "slipway"
  environment = "dev"
  location    = "westeurope"

  resource_group_name = "rg-slipway-dev"
  acr_name            = "acrslipwaydev"
  key_vault_name      = "kv-slipway-dev"
  cae_name            = "cae-slipway-dev"
  log_analytics_name  = "log-slipway-dev"
  cicd_identity_name  = "id-slipway-cicd-dev" # created by setup-platform.sh (flexible federated credentials)

  tags = {
    platform    = local.platform
    environment = local.environment
    managed_by  = "terraform"
    generator   = "slipway-platform"
  }
}
