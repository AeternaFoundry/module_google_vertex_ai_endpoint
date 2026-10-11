output "vertex_ai_endpoints_id" {
  description = "Map of id values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_endpoints_create_time" {
  description = "Map of create_time values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_endpoints_dedicated_endpoint_dns" {
  description = "Map of dedicated_endpoint_dns values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no dedicated_endpoint_dns are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.dedicated_endpoint_dns if v.dedicated_endpoint_dns != null && length(v.dedicated_endpoint_dns) > 0 }
}
output "vertex_ai_endpoints_dedicated_endpoint_enabled" {
  description = "Map of dedicated_endpoint_enabled values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no dedicated_endpoint_enabled are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.dedicated_endpoint_enabled if v.dedicated_endpoint_enabled != null }
}
output "vertex_ai_endpoints_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_endpoints_deployed_models" {
  description = "Map of deployed_models values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no deployed_models are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.deployed_models if v.deployed_models != null && length(v.deployed_models) > 0 }
}
output "vertex_ai_endpoints_description" {
  description = "Map of description values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no description are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.description if v.description != null && length(v.description) > 0 }
}
output "vertex_ai_endpoints_display_name" {
  description = "Map of display_name values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no display_name are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "vertex_ai_endpoints_effective_labels" {
  description = "Map of effective_labels values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no effective_labels are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "vertex_ai_endpoints_encryption_spec" {
  description = "Map of encryption_spec values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no encryption_spec are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "vertex_ai_endpoints_etag" {
  description = "Map of etag values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no etag are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "vertex_ai_endpoints_labels" {
  description = "Map of labels values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no labels are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "vertex_ai_endpoints_location" {
  description = "Map of location values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no location are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vertex_ai_endpoints_model_deployment_monitoring_job" {
  description = "Map of model_deployment_monitoring_job values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no model_deployment_monitoring_job are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.model_deployment_monitoring_job if v.model_deployment_monitoring_job != null && length(v.model_deployment_monitoring_job) > 0 }
}
output "vertex_ai_endpoints_name" {
  description = "Map of name values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_endpoints_network" {
  description = "Map of network values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no network are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.network if v.network != null && length(v.network) > 0 }
}
output "vertex_ai_endpoints_predict_request_response_logging_config" {
  description = "Map of predict_request_response_logging_config values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no predict_request_response_logging_config are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => one(v.predict_request_response_logging_config) if v.predict_request_response_logging_config != null && length(v.predict_request_response_logging_config) > 0 }
}
output "vertex_ai_endpoints_private_service_connect_config" {
  description = "Map of private_service_connect_config values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no private_service_connect_config are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => one(v.private_service_connect_config) if v.private_service_connect_config != null && length(v.private_service_connect_config) > 0 }
}
output "vertex_ai_endpoints_project" {
  description = "Map of project values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_endpoints_region" {
  description = "Map of region values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vertex_ai_endpoints_terraform_labels" {
  description = "Map of terraform_labels values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no terraform_labels are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "vertex_ai_endpoints_traffic_split" {
  description = "Map of traffic_split values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no traffic_split are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.traffic_split if v.traffic_split != null && length(v.traffic_split) > 0 }
}
output "vertex_ai_endpoints_update_time" {
  description = "Map of update_time values across all vertex_ai_endpoints, keyed the same as var.vertex_ai_endpoints except keys with no update_time are omitted"
  value       = { for k, v in google_vertex_ai_endpoint.vertex_ai_endpoints : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

