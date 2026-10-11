output "files_id" {
  description = "Map of id values across all files, keyed the same as var.files except keys with no id are omitted"
  value       = { for k, v in databricks_file.files : k => v.id if v.id != null && length(v.id) > 0 }
}
output "files_content_base64" {
  description = "Map of content_base64 values across all files, keyed the same as var.files except keys with no content_base64 are omitted"
  value       = { for k, v in databricks_file.files : k => v.content_base64 if v.content_base64 != null && length(v.content_base64) > 0 }
}
output "files_file_size" {
  description = "Map of file_size values across all files, keyed the same as var.files except keys with no file_size are omitted"
  value       = { for k, v in databricks_file.files : k => v.file_size if v.file_size != null }
}
output "files_md5" {
  description = "Map of md5 values across all files, keyed the same as var.files except keys with no md5 are omitted"
  value       = { for k, v in databricks_file.files : k => v.md5 if v.md5 != null && length(v.md5) > 0 }
}
output "files_modification_time" {
  description = "Map of modification_time values across all files, keyed the same as var.files except keys with no modification_time are omitted"
  value       = { for k, v in databricks_file.files : k => v.modification_time if v.modification_time != null && length(v.modification_time) > 0 }
}
output "files_path" {
  description = "Map of path values across all files, keyed the same as var.files except keys with no path are omitted"
  value       = { for k, v in databricks_file.files : k => v.path if v.path != null && length(v.path) > 0 }
}
output "files_provider_config" {
  description = "Map of provider_config values across all files, keyed the same as var.files except keys with no provider_config are omitted"
  value       = { for k, v in databricks_file.files : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "files_remote_file_modified" {
  description = "Map of remote_file_modified values across all files, keyed the same as var.files except keys with no remote_file_modified are omitted"
  value       = { for k, v in databricks_file.files : k => v.remote_file_modified if v.remote_file_modified != null }
}
output "files_source" {
  description = "Map of source values across all files, keyed the same as var.files except keys with no source are omitted"
  value       = { for k, v in databricks_file.files : k => v.source if v.source != null && length(v.source) > 0 }
}

