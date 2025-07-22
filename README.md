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
