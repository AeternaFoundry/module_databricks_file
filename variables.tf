variable "files" {
  description = <<EOT
Map of files, attributes below
Required:
    - path
Optional:
    - content_base64
    - md5
    - remote_file_modified
    - source
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    path                 = string
    content_base64       = optional(string)
    md5                  = optional(string)
    remote_file_modified = optional(bool)
    source               = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

