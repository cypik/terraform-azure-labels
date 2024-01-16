# Terraform-azure-labels

# Terraform azure Cloud lables Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Authors](#authors)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)
-
## Introduction
This Terraform module creates structured labels for Azure resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.
## Example: labels
```hcl
    module "labels" {
      source        = "cypik/labels/azure"
      version       = "1.0.1"
      name          = "app"
      environment   = "test"
      label_order   = ["name", "environment"]
      business_unit = "Corp"
      attributes    = ["private"]
      extra_tags = {
        Application = "Demo"
      }
    }
```
Please ensure you specify the correct 'source' path for the module.

# Examples
For detailed examples on how to use this module, please refer to the [example](https://github.com/cypik/terraform-azure-labels/blob/master/_example) directory within this repository.

## Authors
Your Name
Replace **MIT** and **Cypik** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the **MIT** License - see the [LICENSE](https://github.com/cypik/terraform-azure-labels/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.90.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`). | `list(string)` | `[]` | no |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | Top-level division of your company that owns the subscription or workload that the resource belongs to. In smaller organizations, this tag might represent a single corporate or shared top-level organizational element. | `string` | `"Corp"` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `organization`, `name`, `environment` and `attributes`. | `string` | `"-"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(string)` | `{}` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'cypik'. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/cypik/terraform-azure-labels"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | Normalized attributes. |
| <a name="output_business_unit"></a> [business\_unit](#output\_business\_unit) | Normalized business\_unit |
| <a name="output_environment"></a> [environment](#output\_environment) | Normalized environment |
| <a name="output_id"></a> [id](#output\_id) | Disambiguated ID. |
| <a name="output_label_order"></a> [label\_order](#output\_label\_order) | Normalized Tag map. |
| <a name="output_name"></a> [name](#output\_name) | Normalized name. |
| <a name="output_repository"></a> [repository](#output\_repository) | Terraform current module repo |
| <a name="output_tags"></a> [tags](#output\_tags) | Normalized Tag map. |
<!-- END_TF_DOCS -->