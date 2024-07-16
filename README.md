# Terraform Nginx Deployment with OPA Verification

This project demonstrates a simple Terraform configuration to deploy an Nginx "Hello World" application, verified by an Open Policy Agent (OPA) rule.

## Prerequisites

- Terraform (>= 0.12)
- OPA CLI

## Project Structure
.
├── scripts
├── infra-as-code
├── azure-pipeline.yml
└── README.md

## Quick Start

1. Clone this repository:
git clone https://github.com/yourusername/terraform-nginx-opa.git
cd terraform-nginx-opa
Copy
2. Initialize Terraform:
terraform init
Copy
3. Review and modify the `variables.tf` file if needed.

4. Run OPA verification:
opa eval --data policy.rego --input terraform.tfplan "data.terraform.allow"
Copy
5. If the OPA check passes, apply the Terraform configuration:
terraform apply
Copy
6. After successful application, the Nginx server's public IP will be displayed.


## Cleaning Up

To destroy the created resources:
terraform destroy
Copy
