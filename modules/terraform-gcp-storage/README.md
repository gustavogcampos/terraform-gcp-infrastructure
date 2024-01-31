<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_force_destroy"></a> [bucket\_force\_destroy](#input\_bucket\_force\_destroy) | Delete content before the bucket | `bool` | `false` | no |
| <a name="input_bucket_location"></a> [bucket\_location](#input\_bucket\_location) | Location of the bucket | `string` | `""` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the bucket | `string` | `""` | no |
| <a name="input_bucket_public_access_prevention"></a> [bucket\_public\_access\_prevention](#input\_bucket\_public\_access\_prevention) | Prevents public access to the bucket | `string` | `"enforced"` | no |
| <a name="input_bucket_storage_class"></a> [bucket\_storage\_class](#input\_bucket\_storage\_class) | Storage Class of the bucket | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_location"></a> [bucket\_location](#output\_bucket\_location) | Storage of the bucket |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Name of the bucket. |
| <a name="output_bucket_url"></a> [bucket\_url](#output\_bucket\_url) | URL of the bucket |
<!-- END_TF_DOCS -->