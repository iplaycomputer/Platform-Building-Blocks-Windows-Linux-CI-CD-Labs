# Platform Building Blocks: Windows + Linux CI/CD Labs

![last commit](https://img.shields.io/github/last-commit/iplaycomputer/Platform-Building-Blocks-Windows-Linux-CI-CD-Labs) 
[![Exercises verified](https://img.shields.io/badge/exercises-7_verified-brightgreen)](./exercises/) 
![Lab Status](https://img.shields.io/badge/lab--status-in_progress-orange) 
![Open Issues](https://img.shields.io/github/issues/iplaycomputer/Platform-Building-Blocks-Windows-Linux-CI-CD-Labs)
![Closed Issues](https://img.shields.io/github/issues-closed/iplaycomputer/Platform-Building-Blocks-Windows-Linux-CI-CD-Labs)
![Repo Size](https://img.shields.io/github/repo-size/iplaycomputer/Platform-Building-Blocks-Windows-Linux-CI-CD-Labs)

---

### Languages  
🇺🇸 English

Hands-on labs to learn cross-platform CI/CD.  
Target: junior sysadmins, DevOps, infra engineers.  
Each exercise is a short, verifiable lab.


---

## Exercises
| Index | Name | Difficulty | Practice |
|---:|---|---:|:---|
| 00 | Overview & Decision Matrix | Beginner | [`exercises/00-overview/README.md`](exercises/00-overview/README.md) |
| 01 | Provision Windows + Linux build VMs | Intermediate | [`exercises/01-provision-agents/README.md`](exercises/01-provision-agents/README.md) |
| 02 | Containerize sample app (Docker) | Beginner | [`exercises/02-containerize-app/README.md`](exercises/02-containerize-app/README.md) |
| 03 | Cross-platform CI pipeline (GitHub Actions) | Intermediate | [`exercises/03-cross-platform-ci/README.md`](exercises/03-cross-platform-ci/README.md) |
| 04 | Adapter proxy for incompatible services | Intermediate | [`exercises/04-adapter-proxy/README.md`](exercises/04-adapter-proxy/README.md) |
| 05 | Cert checks and break-glass playbook | Intermediate | [`exercises/05-cert-checks/README.md`](exercises/05-cert-checks/README.md) |
| 06 | Cost snapshot and alerts playbook | Intermediate | [`exercises/06-cost-observability/README.md`](exercises/06-cost-observability/README.md) |

---

## Environment

This repo supports two lab paths. Default to **container-first local** for fastest onboarding. Use **Cloud** when you need official Windows images or scale.

## Local 
- Purpose: fastest, lowest-cost, repeatable labs.  
- Recommended software:
  - Docker Desktop (check licensing) or Docker Engine.  
  - Podman (rootless) as a Linux-first alternative.  
  - PowerShell 7+ (`pwsh`) cross-platform.  
  - `git`, `gh` (GitHub CLI), `curl`, `ssh`.  
  - `docker-compose` or `docker compose` for multi-container demos.  
- Minimum host: 8 GB RAM, 4 vCPU, 50 GB disk. Recommended: 16 GB, 8 vCPU, 100 GB.  
- Storage: use local Docker volumes; keep large VM images out of the repo (`assets/images/` only metadata).  
- Runners & registry:
  - Use GHCR (`ghcr.io`) or Docker Hub for images.  
  - Prefer ephemeral or autoscaling runners (Actions Runner Controller / autoscale pools) for cost/security.  

## Cloud 

- **Purpose:** official Windows Server images, networking, scale tests. Choose Azure / AWS / GCP.  
- **Instance guidance:** Windows builds usually need **4+ vCPU** and **8–16 GB RAM**. Scale runners with autoscaling groups or Actions Runner Controller (ARC).  
- **Networking:** restrict RDP/SSH to admin IPs. Place runners in private subnets.  
- **Cost control:** use spot/preemptible instances for non-critical runners. Provide `terraform destroy` scripts and automation to tear down test infrastructure.  
- **Quick checks:**
  - VM boots successfully.  
  - SSH (Linux) or RDP (Windows) connects.  
  - Runner appears and registers in CI UI (tags: `windows-build`, `linux-build`).


---

## About
This repo teaches practical cross-platform CI/CD topics including agent split, containerization, CI pipelines, adapters, security checks, and cost observability. Use the `exercises/` folder to run labs. Contribute via issues and PRs.

---

## Resources
- `slides/` — one-slide-per-module deck.  
- `cheat-sheet.md` — one-page runbook.  
- `assets/architecture.png` — architecture diagram used in this repo.

---

## Contribute
Please read `CONTRIBUTING.md`. Use issue templates for lab fixes and `PR` for new exercises.

---

## Related project — Sysadmin series

**[iplaycomputer/hybrid-ad-azure-lab](https://github.com/iplaycomputer/hybrid-ad-azure-lab)**  
Hybrid AD / Azure AD / Microsoft 365 homelab for practicing on-prem AD, Azure AD Connect, SCCM, Intune, GPOs, and endpoint management.

---

## License
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](./LICENSE)
