# terraform-azure-nat-gateway
# Terraform Azure Infrastructure

This Terraform configuration defines an Azure infrastructure using the Azure provider.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)

## Introduction
This repository contains Terraform code to deploy resources on Microsoft Azure, including a resource group and a nat-gateway.

## Usage
To use this module, you should have Terraform installed and configured for AZURE. This module provides the necessary Terraform configuration
for creating AZURE resources, and you can customize the inputs as needed. Below is an example of how to use this module:

# Example

```hcl
module "nat_gateway" {
  depends_on          = [module.resource_group, module.vnet]
  source              = "git::https://github.com/cypik/terraform-azure-nat-gateway.git?ref=v1.0.0"
  name                = "app"
  environment         = "test"
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  subnet_ids          = module.subnet.default_subnet_id
}
```
This example demonstrates how to create various AZURE resources using the provided modules. Adjust the input values to suit your specific requirements.

## Module Inputs
The following input variables can be configured:

- 'name': Specifies the name of the NAT Gateway.
- 'environment': The environment or purpose of the resources.
- 'location': Specifies the supported Azure location where the NAT Gateway should exist.
- 'resource_group_name': Specifies the name of the Resource Group in which the NAT Gateway should exist.
- 'subnet_ids': The ID of the Subnet.

## Module Outputs
This module provides the following outputs:

- 'id': The ID of the NAT Gateway.
- 'resource_guid':  The resource GUID property of the NAT Gateway.

# Examples
For detailed examples on how to use this module, please refer to the '[example](https://github.com/cypik/terraform-azure-nat-gateway/blob/master/_example)' directory within this repository.

# License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/cypik/terraform-azure-nat-gateway/blob/master/LICENSE) file for more details.

# Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
