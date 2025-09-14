# Decision Matrix — pick your lab path

> **Default path:** **Cloud VMs** — *need Windows Server images*  
> **Rationale:** Official Windows images required to build and test Windows artifacts for Module 1.

---

| Path | Windows builds | Cost | Complexity | Reproducible | Security | Best when |
|---|---:|:---:|:---:|:---:|:---:|---|
| **Local (container-first)** | Medium | Low | Low | Medium | Low | Quick demos; no cloud access |
| **Cloud VMs** | **High** | Medium–High | Medium | **High** | **High** | Realistic labs; official Windows images; networking tests |
| **Self-hosted runners** | **High** | Medium | Medium–High | High | High | Teach runner lifecycle, tagging, autoscale |
| **Container-only (Linux)** | Low | Low | Low | High | Medium | App/container-focused labs (no Windows) |

---

### Quick recommendations
- **Starter:** Local (container-first) — fastest, lowest cost, reproducible.  
- **Realism & scale:** Cloud VMs — use when Windows images or networking matter.  
- **Runner ops:** Self-hosted runners — use for registration, autoscaling, and hardening.  
- **App-only:** Container-only — skip Windows specifics.

---

**How to use**  
Edit the **Default path** line at the top with your chosen path and one-line rationale, then commit `exercises/00-overview/decision-matrix.md`.
