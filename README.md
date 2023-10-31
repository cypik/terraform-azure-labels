# Terraform Infrastructure as Code (IaC) - Azure Labels Module

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Overview
This Terraform module creates structured labels for Azure resources with specific attributes.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure subscription and credentials set up

## Usage

1. Ensure you have the required provider configured in your Terraform environment.

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

3. Run `terraform init` and `terraform apply` to apply labels to Azure resources.

## Module Inputs

- `name`: The name of the application or resource.
- `environment`: The environment in which the resource exists.
- `label_order`: The order in which labels should be applied.
- `business_unit`: The business unit associated with the application.
- `attributes`: Additional attributes to add to the labels.
- `extra_tags`: Extra tags to associate with the resource.

## Module Outputs

- This module currently does not provide any outputs.

## Authors
- [Your Name]
- [Co-author's Name, if applicable]

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-azure-labels/blob/README/LICENSE.txt) file for details.


