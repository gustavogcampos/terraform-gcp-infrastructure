<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_secret_manager_secret.db_secret_name](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.db_secret](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [google_sql_database.database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database) | resource |
| [google_sql_database_instance.instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_delete_protection"></a> [db\_delete\_protection](#input\_db\_delete\_protection) | Delete protection of the database | `bool` | `true` | no |
| <a name="input_db_instance_name"></a> [db\_instance\_name](#input\_db\_instance\_name) | Name of the database instance | `string` | `""` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of the database | `string` | `""` | no |
| <a name="input_db_tier"></a> [db\_tier](#input\_db\_tier) | Tier of the database. | `string` | `"db-f1-micro"` | no |
| <a name="input_db_version"></a> [db\_version](#input\_db\_version) | Storage Class of the database. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_connection_name"></a> [db\_connection\_name](#output\_db\_connection\_name) | Connection name of the database |
| <a name="output_db_instance_name"></a> [db\_instance\_name](#output\_db\_instance\_name) | Name of the instance |
| <a name="output_db_secret_name"></a> [db\_secret\_name](#output\_db\_secret\_name) | Secret name of the database |
<!-- END_TF_DOCS -->