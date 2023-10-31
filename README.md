# terraform-azure-labels
# Terraform Infrastructure as Code (IaC) - Azure Module

## Overview
This Terraform module deploys and configures Azure resources, providing a standardized way to manage infrastructure components.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure subscription and credentials set up

## Usage

1. Ensure you have the required providers configured in your Terraform environment.

    ```hcl
    provider "azurerm" {
      features {}
    }
    ```

2. Use the module by referencing its source and providing the required variables.

    ```hcl
    module "labels" {
      source        = "./../"  # Update with the correct path to the module
    
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

3. Run `terraform init` and `terraform apply` to deploy the resources.

## Module Inputs

- `name`: The name of the application.
- `environment`: The environment (e.g., "test", "production").
- `label_order`: The order in which labels should be applied.
- `business_unit`: The business unit associated with the application.
- `attributes`: Additional attributes for resource configuration.
- `extra_tags`: Extra tags to apply to the Azure resources.

## Module Outputs

- This module currently does not provide any outputs.


## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-azure-labels/blob/README/LICENSE.txt) file for details.

