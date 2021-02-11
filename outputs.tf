output "newkey" {
  value       = jsondecode(fortios_json_generic_api.apikey.response)["results"]["access_token"]
  description = "New API key."
}