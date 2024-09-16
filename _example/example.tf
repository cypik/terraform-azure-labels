provider "azurerm" {
  features {}
}

module "labels" {
  source        = "./../"
  name          = "app"
  environment   = "test"
  label_order   = ["name", "environment"]
  business_unit = "Corp"
  attributes    = ["private"]
  repository    = "https://github.com/cypik/terraform-azure-labels"
  managedby     = "info@cypik.com"
  extra_tags = {
    Application = "Demo"
  }
}
