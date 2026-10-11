variable "vertex_ai_endpoints" {
  description = <<EOT
Map of vertex_ai_endpoints, attributes below
Required:
    - display_name
    - location
    - name
Optional:
    - dedicated_endpoint_enabled
    - deletion_policy
    - description
    - labels
    - network
    - project
    - region
    - traffic_split
    - encryption_spec (block):
        - kms_key_name (required)
    - predict_request_response_logging_config (block):
        - bigquery_destination (optional, block):
            - output_uri (optional)
        - enabled (optional)
        - sampling_rate (optional)
    - private_service_connect_config (block):
        - enable_private_service_connect (required)
        - project_allowlist (optional)
        - psc_automation_configs (optional, block):
            - network (required)
            - project_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name               = string
    location                   = string
    name                       = string
    dedicated_endpoint_enabled = optional(bool)
    deletion_policy            = optional(string)
    description                = optional(string)
    labels                     = optional(map(string))
    network                    = optional(string)
    project                    = optional(string)
    region                     = optional(string)
    traffic_split              = optional(string)
    encryption_spec = optional(object({
      kms_key_name = string
    }))
    predict_request_response_logging_config = optional(object({
      bigquery_destination = optional(object({
        output_uri = optional(string)
      }))
      enabled       = optional(bool)
      sampling_rate = optional(number)
    }))
    private_service_connect_config = optional(object({
      enable_private_service_connect = bool
      project_allowlist              = optional(list(string))
      psc_automation_configs = optional(list(object({
        network    = string
        project_id = string
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vertex_ai_endpoints : (
        v.traffic_split == null || (can(jsondecode(v.traffic_split)))
      )
    ])
    error_message = "must be valid JSON"
  }
}

