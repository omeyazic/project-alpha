# GitOps Pipeline Training

Production-grade GitOps pipeline implementation using Kubernetes, Jenkins, ArgoCD, and Kaniko.

## What You'll Build

A complete CI/CD pipeline demonstrating enterprise practices:
- Infrastructure as Code (Terraform + Multipass)
- Configuration Management (Ansible)
- Kubernetes Cluster (K3s)
- Secret Management (HashiCorp Vault)
- Continuous Integration (Jenkins with Kubernetes agents)
- Rootless Image Builds (Kaniko)
- Continuous Deployment (ArgoCD)
- Complete GitOps Workflow

## Getting Started

### Prerequisites

**Hardware:**
- Mac (M1/M2/M3)
- Minimum: 8GB RAM, 50GB free disk space
- Recommended: 16GB RAM, 100GB free disk space

**Required Accounts:**
- GitHub account with Personal Access Token
- Docker Hub account with Access Token

**Software to Install:**
- Homebrew
- Multipass
- Terraform
- Ansible
- kubectl
- Helm
- Git
- Python 3

### Quick Start

**Step 1: Fork this repository**
Click the "Fork" button on GitHub to create your own copy.

**Step 2: Clone your fork**
```bash
git clone https://github.com/YOUR_USERNAME/gitops-training.git
cd gitops-training
```

**Step 3: Create your working guide**
```bash
cd docs
cp gitops-pipeline-runbook-master.md gitops-pipeline-runbook-YOURNAME.md
```

Replace `YOURNAME` with your actual name (e.g., `gitops-pipeline-runbook-john.md`).

**Step 4: Follow the runbook**
1. Open `gitops-pipeline-runbook-YOURNAME.md` in your text editor
2. Complete **Phase 0: Configuration Variables** (find & replace placeholders)
3. Follow step-by-step through all phases

## Documentation

- **[Main Training Guide](docs/gitops-pipeline-runbook-master.md)** - Complete step-by-step runbook
- **[Architecture Overview](docs/architecture.md)** - System design and diagrams (optional)

## Learning Path

```
Phase 0: Environment Setup (30 min)
   |
   v
Phase 1: Infrastructure Provisioning (20 min)
   |
   v
Phase 2: Configuration Management (20 min)
   |
   v
Phase 3: Kubernetes Cluster (20 min)
   |
   v
Phase 4: DevOps Services (60 min)
   |
   v
Phase 5: GitOps Pipeline (90 min)
   |
   v
Phase 6: Validation & Testing (30 min)
```

**Total Time:** 4-5 hours  
**Outcome:** Production-ready local GitOps pipeline

## Security Highlights

- Centralized secret management with HashiCorp Vault
- Dynamic credential injection via Vault sidecar agents
- Rootless image builds with Kaniko (no Docker daemon)
- No privileged container access required
- Kubernetes-native workflows
- Security best practices from day one

## Repository Structure

```
gitops-training/
├── README.md                   # This file
├── LICENSE                     # License information
├── docs/
│   └── gitops-pipeline-runbook-master.md   # Main training guide
├── terraform/                  # Infrastructure as Code (you populate)
├── ansible/
│   ├── inventory/             # Ansible inventory files (you populate)
│   ├── playbooks/             # Ansible playbooks (you populate)
│   └── roles/                 # Ansible roles (you populate)
├── kubernetes/
│   ├── jenkins/               # Jenkins K8s manifests (you populate)
│   ├── vault/                 # Vault K8s manifests (you populate)
│   ├── argocd/
│   │   └── applications/      # ArgoCD applications (you populate)
│   └── test-apps/             # Test application manifests (you populate)
└── scripts/                   # Helper scripts (optional)
```

## Technology Stack

| Component | Technology | Purpose |
|-----------|-----------|---------|
| Infrastructure | Terraform + Multipass | VM provisioning |
| Configuration | Ansible | System configuration |
| Orchestration | K3s | Lightweight Kubernetes |
| Container Runtime | containerd | Container execution |
| Secret Management | HashiCorp Vault | Secure secret storage |
| Image Builder | Kaniko | Rootless image builds |
| CI Tool | Jenkins | Continuous Integration |
| CD Tool | ArgoCD | Continuous Deployment |
| Application | Flask (Python) | Demo web application |
| Version Control | Git + GitHub | Source control |

## Contributing

Found an issue or want to improve the training?

1. Open an issue describing the problem or improvement
2. Submit a pull request with your changes
3. Follow existing code style and documentation format

## Support

If you encounter issues:
1. Check the **Troubleshooting** section in the runbook
2. Review closed issues for similar problems
3. Open a new issue with detailed information

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

This training material was created to provide hands-on experience with production-grade GitOps practices, demonstrating industry-standard CI/CD workflows with security best practices.

---

**Ready to start?** Open [docs/gitops-pipeline-runbook-master.md](docs/gitops-pipeline-runbook-master.md) and begin your journey.

