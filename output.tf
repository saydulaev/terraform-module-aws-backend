output "backend_data_domain_name" {
  value       = module.backend_data.bucket_domain_name
  description = "Backend data domain name"
}

output "backend_data_arn" {
  value       = module.backend_data.bucket_arn
  description = "Backend data arn"
}

output "backend_data_id" {
  value       = module.backend_data.bucket_id
  description = "Backend data ID"
}

output "backend_data_regional_domain_name" {
  value       = module.backend_data.bucket_regional_domain_name
  description = "Backend data regional domain name"
}

output "backend_data_hosted_zone_id" {
  value       = module.backend_data.bucket_hosted_zone_id
  description = "Backend data hosted zone id"
}

output "backend_data_region" {
  value       = module.backend_data.bucket_region
  description = "Backend data region"
}

output "backend_lock_arn" {
  value       = module.backend_lock.dynamodb_table_arn
  description = "The ARN of DynamoDB table"
}

output "backend_lock_id" {
  value       = module.backend_lock.dynamodb_table_id
  description = "The ID of DynamoDB table"
}
