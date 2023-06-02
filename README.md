# tf-modules-external-program

This terraform module executes an external program and returns the results as output.

## Simple Usage

```hcl
module "program" {
    source = "XXX"
    program = "python3"
    handler = "${path.module}/python/main.py"
    arguments = ["foo", "bar", "baz", "portato"]
    install_dependencies = "pip install -r ${path.module}/python/requirements.txt" 
}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | n/a |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |


## Resources

| Name | Type |
|------|------|
| [local_file.exec](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [external_external.this](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arguments"></a> [arguments](#input\_arguments) | A list of arguments to be supplied to your program. | `list(string)` | `[]` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | A mapping of environment variables set prior to program execution. | `map(string)` | `{}` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | The entrypoint handler for your program. | `string` | n/a | yes |
| <a name="input_install_dependencies"></a> [install\_dependencies](#input\_install\_dependencies) | A list of commands used to install dependencies for your program. | `string` | `""` | no |
| <a name="input_program"></a> [program](#input\_program) | The executable used to run your program. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arguments"></a> [arguments](#output\_arguments) | n/a |
| <a name="output_dependencies"></a> [dependencies](#output\_dependencies) | n/a |
| <a name="output_environment_variables"></a> [environment\_variables](#output\_environment\_variables) | n/a |
| <a name="output_handler"></a> [handler](#output\_handler) | n/a |
| <a name="output_program"></a> [program](#output\_program) | n/a |
| <a name="output_result"></a> [result](#output\_result) | n/a |
