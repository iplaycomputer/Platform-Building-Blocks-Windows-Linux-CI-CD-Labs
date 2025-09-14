# 01 — Provision Windows + Linux build VMs

**Objective**  
Provision one Windows VM and one Linux VM and register them as CI runners.

**Estimated time**  
45–90 minutes

**Prereqs**  
- Cloud account (Azure/AWS/GCP) or local hypervisor (VirtualBox / Hyper-V)  
- `git`, `ssh`, `pwsh` (PowerShell 7+) and basic CLI skills  
- GitHub repo with Actions enabled (or GitLab/GitHub runner token)

## Deliverables
- `infra/` (Terraform or Vagrant examples)  
- `scripts/register-runner.sh` (Linux)  
- `scripts/register-runner.ps1` (Windows)  
- screenshot or CI UI proof showing runners registered and tagged `windows-build` / `linux-build`

## Steps (high level)
1. Choose path: Cloud (Terraform) or Local (Vagrant). See `exercises/00-overview/decision-matrix.md`.  
2. For Cloud: `cd infra && terraform init && terraform apply -var-file=secrets.tfvars`.  
3. For Local: `vagrant up` (uses `infra/Vagrantfile`).  
4. SSH / RDP into provisioned VMs and run the registration script for each runner:
   - Linux: `bash scripts/register-runner.sh`
   - Windows (pwsh): `pwsh .\scripts\register-runner.ps1`
5. Verify runners appear in GitHub Actions self-hosted runners page with tags.

## Verification
- GitHub Actions UI shows two self-hosted runners with tags `windows-build` and `linux-build`.  
- Example verification command (Linux): `curl -sS https://api.github.com/repos/<owner>/<repo>/actions/runners` (requires token).

## Notes
- Do not commit secrets or runner tokens. Use `secrets.example.env` as a template.
- Provide a `terraform destroy` or `vagrant destroy` step in `infra/` to teardown resources.
