/**
 * # terraform-fortios-apikey-rotation
 *
 * This module will rotate the API key of the defined user.
 * You can change the current user key with this module, however any subsequent commands with fail as the key has changed.
 *  
 */

terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = ">= 1.10.1"
    }
  }
}

resource "time_rotating" "apikey" {
  rotation_days = var.rotation_days
}

resource "random_id" "apikey" {
  byte_length = 4
  keepers = {
    "rotation" = time_rotating.apikey.id
  }
}

resource "fortios_json_generic_api" "apikey" {
  path           = "/api/v2/monitor/system/api-user/generate-key"
  method         = "POST"
  force_recreate = random_id.apikey.b64_url
  json = jsonencode({
    api-user = var.api_username
  })
}