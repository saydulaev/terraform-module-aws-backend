data "aws_region" "current" {}

locals {
  name = lower("terraform-${var.backend_env}-${var.backend_name}")
  dynamodb_hash_key = "LockID"
}

module "backend_data" {
  source = "git::https://github.com:saydulaev/terraform-module-aws-s3.git?ref=main"
  s3_bucket_name = local.name
  s3_bucket_tags = var.backend_tags
}

module "backend_lock" {
  source = "git::https://github.com:saydulaev/terraform-module-aws-dynamodb.git?ref=main"
  dynamodb_table_name = local.name
  dynamodb_hash_key = local.dynamodb_hash_key
  dynamodb_tags = var.backend_tags
}
