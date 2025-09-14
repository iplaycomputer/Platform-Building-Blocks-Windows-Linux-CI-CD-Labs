# 01 — Provision Windows + Linux build VMs

**Objective**  
Provision one Windows VM and one Linux VM and register them as CI runners.

**Estimated time**  
45–90 minutes

## Prereqs
- Cloud account (Azure / AWS / GCP) or local hypervisor (VirtualBox / Hyper-V)  
- `git`, `ssh`, `pwsh` (PowerShell 7+)  
- GitHub repo with Actions enabled (or equivalent CI and runner token)  
- Admin access to create VMs and register runners

## Deliverables
- `infra/` (Terraform or Vagrant examples)  
- `scripts/register-runner.sh` (Linux)  
- `scripts/register-runner.ps1` (Windows)  
- Proof of registration: screenshot or CI UI showing runners tagged `windows-build` and `linux-build`

## High-level steps
1. Pick path based on `exercises/00-overview/decision-matrix.md`: **Cloud (Terraform)** or **Local (Vagrant)**.  
2. Provision infra:
   - Cloud (Terraform):  
     ```bash
     cd exercises/01-provision-agents/infra
     terraform init
     terraform apply -var-file=secrets.example.tfvars
     ```
   - Local (Vagrant):  
     ```bash
     cd exercises/01-provision-agents/infra
     vagrant up
     ```
3. Connect to VMs (SSH for Linux, RDP for Windows).  
4. Register runners on each VM:
   - Linux:
     ```bash
     sudo bash scripts/register-runner.sh
     ```
   - Windows (PowerShell):
     ```powershell
     pwsh .\scripts\register-runner.ps1 -RunnerUrl "<RUNNER_URL>" -RunnerToken "<RUNNER_TOKEN>"
     ```
5. Verify runners appear in your CI UI with correct tags.

## Verification
- GitHub Actions UI shows two self-hosted runners with tags `windows-build` and `linux-build`.  
- (Optional) API check (requires token):
  ```bash
  curl -sS -H "Authorization: token $TOKEN" \
    "https://api.github.com/repos/<OWNER>/<REPO>/actions/runners" | jq .
