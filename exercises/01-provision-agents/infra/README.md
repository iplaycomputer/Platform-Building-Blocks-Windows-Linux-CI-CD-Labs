# infra — provisioning examples

This folder holds example infra for Module 01. Provide either:
- Terraform (recommended for Cloud), or
- Vagrant + VirtualBox/Hyper-V (recommended for Local).

Include:
- `main.tf` / provider config (Terraform) or `Vagrantfile` (Vagrant)
- `secrets.example.tfvars` or `secrets.example.env` with required vars
- `destroy.sh` or documented `terraform destroy` commands

Keep large binaries out of the repo. Commit only configs and small templates.
