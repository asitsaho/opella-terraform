# opella-terraform

# Opella Terraform

Reusable Terraform module for provisioning Azure Virtual Networks (VNet) in multiple environments, along with Storage Accounts + Blob Containers.

## 🧩 Structure

├── modules/
│ └── vnet/ # Reusable Azure VNet module
├── environments/
│ ├── dev/ # Development environment
│ └── prod/ # Production environment
├── .github/workflows/ # CI/CD GitHub Actions
├── provider.tf # Shared provider config (optional)
└── README.md


## 🚀 Usage

```bash
cd environments/dev
terraform init
terraform plan
terraform apply

And similarly for environments/prod.

VNet module
Encapsulates:

azurerm_virtual_network

azurerm_subnet (supports multiple via list)

Module inputs
vnet_name, address_space, location, resource_group_name, subnets.

Module output
vnet_id

📦 Environments
Each defines:

Azure Resource Group

VNet module invocation

Storage Account + Blob Container

⚙️ GitHub Actions (CI/CD)
On PR/merge to main, the workflow:

Initializes Terraform

Formats & validates

Plans

Uploads plan as artifact for review

yaml
Copy
Edit
