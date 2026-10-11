resource "google_vertex_ai_endpoint" "vertex_ai_endpoints" {
  for_each = var.vertex_ai_endpoints

  display_name               = each.value.display_name
  location                   = each.value.location
  name                       = each.value.name
  dedicated_endpoint_enabled = each.value.dedicated_endpoint_enabled
  deletion_policy            = each.value.deletion_policy
  description                = each.value.description
  labels                     = each.value.labels
  network                    = each.value.network
  project                    = each.value.project
  region                     = each.value.region
  traffic_split              = each.value.traffic_split

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "predict_request_response_logging_config" {
    for_each = each.value.predict_request_response_logging_config != null ? [each.value.predict_request_response_logging_config] : []
    content {
      dynamic "bigquery_destination" {
        for_each = predict_request_response_logging_config.value.bigquery_destination != null ? [predict_request_response_logging_config.value.bigquery_destination] : []
        content {
          output_uri = bigquery_destination.value.output_uri
        }
      }
      enabled       = predict_request_response_logging_config.value.enabled
      sampling_rate = predict_request_response_logging_config.value.sampling_rate
    }
  }

  dynamic "private_service_connect_config" {
    for_each = each.value.private_service_connect_config != null ? [each.value.private_service_connect_config] : []
    content {
      enable_private_service_connect = private_service_connect_config.value.enable_private_service_connect
      project_allowlist              = private_service_connect_config.value.project_allowlist
      dynamic "psc_automation_configs" {
        for_each = private_service_connect_config.value.psc_automation_configs != null ? private_service_connect_config.value.psc_automation_configs : []
        content {
          network    = psc_automation_configs.value.network
          project_id = psc_automation_configs.value.project_id
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

