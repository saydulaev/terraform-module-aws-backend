# Terraform module to prepare terraform backend (S3+DynamoDB).

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_backend_data"></a> [backend\_data](#module\_backend\_data) | git::https://github.com:saydulaev/terraform-module-aws-s3.git | main |
| <a name="module_backend_lock"></a> [backend\_lock](#module\_backend\_lock) | git::https://github.com:saydulaev/terraform-module-aws-dynamodb.git | main |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_env"></a> [backend\_env](#input\_backend\_env) | Environment | `string` | n/a | yes |
| <a name="input_backend_name"></a> [backend\_name](#input\_backend\_name) | Backend name | `string` | n/a | yes |
| <a name="input_backend_tags"></a> [backend\_tags](#input\_backend\_tags) | Tags for infrastructure resources. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_data_arn"></a> [backend\_data\_arn](#output\_backend\_data\_arn) | Backend data arn |
| <a name="output_backend_data_domain_name"></a> [backend\_data\_domain\_name](#output\_backend\_data\_domain\_name) | Backend data domain name |
| <a name="output_backend_data_hosted_zone_id"></a> [backend\_data\_hosted\_zone\_id](#output\_backend\_data\_hosted\_zone\_id) | Backend data hosted zone id |
| <a name="output_backend_data_id"></a> [backend\_data\_id](#output\_backend\_data\_id) | Backend data ID |
| <a name="output_backend_data_region"></a> [backend\_data\_region](#output\_backend\_data\_region) | Backend data region |
| <a name="output_backend_data_regional_domain_name"></a> [backend\_data\_regional\_domain\_name](#output\_backend\_data\_regional\_domain\_name) | Backend data regional domain name |
| <a name="output_backend_lock_arn"></a> [backend\_lock\_arn](#output\_backend\_lock\_arn) | The ARN of DynamoDB table |
| <a name="output_backend_lock_id"></a> [backend\_lock\_id](#output\_backend\_lock\_id) | The ID of DynamoDB table |
<!-- END_TF_DOCS -->
