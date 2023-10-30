# Terraform-azure-labels
This Terraform configuration deploys an Azure module to manage resource labels.

## Prerequisites

Before you begin, ensure you have the following:

1. [Terraform] installed.
2. Azure CLI configured with the necessary permissions.

## Usage

Clone this repository:

   ```bash
   git clone <repository_url>
   cd <repository_directory>
```
1.	Initialize your Terraform configuration:
terraform init

2.	Review and modify the main.tf file to customize the module settings.
3.	Apply the Terraform configuration:
terraform apply
Enter yes when prompted to confirm the deployment.


# Module Inputs
- name: The name of the resource.
- environment: The environment in which the resource exists.
- label_order: The order in which labels should be applied.
- business_unit: The business unit associated with the resource.
- attributes: Additional attributes for the resource.
- extra_tags: Extra tags to be applied.


# Module Outputs
- The module outputs any relevant information about the deployed resources.

# Cleanup
To destroy the deployed resources, run:
Terraform destroy 
Enter yes when prompted to confirm the destruction.

 # License
 This Terraform module is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-azure-labels/blob/README/_example/LICENSE.txt)https://github.com/opz0/terraform-azure-labels/blob/README/_example/LICENSE.txt file for details.

