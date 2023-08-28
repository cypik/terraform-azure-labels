provider "azurerm" {
  features {}
}

module "labels" {
  source = "./../"

  name          = "app"
  environment   = "test"
  label_order   = ["name", "environment"]
  business_unit = "Corp"
  attributes    = ["private"]
  extra_tags = {
    Application = "Demo"
  }
}
