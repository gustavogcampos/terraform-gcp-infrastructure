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
| [google_compute_address.static](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_firewall.rules](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_instance.vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_deletion_protection"></a> [vm\_deletion\_protection](#input\_vm\_deletion\_protection) | Deletion protection of the virtual machine | `string` | `true` | no |
| <a name="input_vm_image"></a> [vm\_image](#input\_vm\_image) | Image of the virtual machine | `string` | `""` | no |
| <a name="input_vm_image_project"></a> [vm\_image\_project](#input\_vm\_image\_project) | Image project of the virtual machine | `string` | `""` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Name of the virtual machine | `string` | `""` | no |
| <a name="input_vm_network"></a> [vm\_network](#input\_vm\_network) | Network of the virtual machine | `string` | `""` | no |
| <a name="input_vm_subnet"></a> [vm\_subnet](#input\_vm\_subnet) | Subnet of the virtual machine | `string` | `""` | no |
| <a name="input_vm_tags"></a> [vm\_tags](#input\_vm\_tags) | Image of the virtual machine | `list(string)` | <pre>[<br>  "web"<br>]</pre> | no |
| <a name="input_vm_type"></a> [vm\_type](#input\_vm\_type) | Type of the virtual machine | `string` | `""` | no |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | Zone of the virtual machine | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_external_ip"></a> [vm\_external\_ip](#output\_vm\_external\_ip) | External IP of the vm |
| <a name="output_vm_internal_ip"></a> [vm\_internal\_ip](#output\_vm\_internal\_ip) | Internal IP of the vm |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | Name of the vm |
<!-- END_TF_DOCS -->