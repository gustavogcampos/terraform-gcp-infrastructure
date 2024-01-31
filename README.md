<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.18 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.14.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_compute"></a> [compute](#module\_compute) | ./modules/terraform-gcp-compute | n/a |
| <a name="module_database"></a> [database](#module\_database) | ./modules/terraform-gcp-database | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/terraform-gcp-network | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ./modules/terraform-gcp-storage | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_location"></a> [bucket\_location](#output\_bucket\_location) | Storage of the bucket |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Name of the bucket. |
| <a name="output_bucket_url"></a> [bucket\_url](#output\_bucket\_url) | URL of the bucket |
| <a name="output_compute_external_ip"></a> [compute\_external\_ip](#output\_compute\_external\_ip) | Tags of the virtual machine |
| <a name="output_compute_internal_ip"></a> [compute\_internal\_ip](#output\_compute\_internal\_ip) | Tags of the virtual machine |
| <a name="output_compute_name"></a> [compute\_name](#output\_compute\_name) | Name of the virtual machine |
| <a name="output_db_connection_name"></a> [db\_connection\_name](#output\_db\_connection\_name) | DNS of the database |
| <a name="output_db_instance_name"></a> [db\_instance\_name](#output\_db\_instance\_name) | Name of the instance |
| <a name="output_db_secret_name"></a> [db\_secret\_name](#output\_db\_secret\_name) | Secret of the database |
| <a name="output_network"></a> [network](#output\_network) | Name of the network |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | Name of the subnet |
<!-- END_TF_DOCS -->