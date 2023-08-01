# YouChoose: Flux

subtitle
:   The Gong for Flux (FluxCD.io)

author
:   Kingdon Barrett

institution
:   Weaveworks

theme
:   rabbit-theme-wwinternalstyle

date
:   2023-07-25

allotted-time
:   5m

# Flux in 5 Minutes

# GitOps

```mermaid
flowchart LR

A((Dev))
B(Git)
A --> B

L((K8s))

B --> L
```
{:
  relative_height="60"
}

Detail: [opengitops.dev](https://opengitops.dev) from GitOps WG

# Flux does GitOps

```mermaid
flowchart LR

A((User))
B(Git Host)
F((Flux))
A --> B --> F

L((Kubernetes))

F --> L
```
{:
  relative_height="60"
}

# How Flux does GitOps

```mermaid
flowchart LR

subgraph Internet
A((User))
B(Git Host)
A --> B
end

subgraph Cluster
subgraph Flux
G -- pull --> B
G((GitRepository))
K((Kustomization))
G --> K
K --> G
end

L((K8s))
K --> L
end
```
{:
  relative_height="90"
}

# What is GitOps GA?

```mermaid
flowchart LR

subgraph Internet
A((User))
B(Git Host)
W(Webhook)
end

A --> B --> W -- notify --> R

subgraph Cluster
subgraph Flux
R((Receiver))
G -- pull --> B
G((GitRepository))
K((Kustomization))
G -- notify --> K
K -- pull --> G
R --> G
end

L((K8s))
K --> L
end
```
{:
  relative_height="90"
}

# What else is new in Flux 2.0?

* SLSA Build Level 3
* {::wait/}AWS, GCP, Azure Workload Identity for OCI Repos
* {::wait/}Horizontal scaling and shards for v.large Flux

# Ecosystem

* Weave GitOps - OSS UI (+Enterprise "WGE")
* {::wait/}VSCode (I work on this!) - GitOps Tools
* {::wait/}You might already use Flux... it's in AKS/Arc, GitLab, EKS-A

# Community

* Community Support (+paid support from Weaveworks, others)
* Fantastic team of maintainers, contributors, & community
* Contributor ladder, events calendar (come work with us!)

# Adopters

* Enterprises - SAP, Volvo, RingCentral
* Partners in Industry - Building products on Flux
* Companies have trusted Flux for years

# Automations

* SemVer SourceRef ++ Scalability ++ Security
* ImageUpdateAutomation - writes back to Git
* Flagger for Progressive Delivery
* TF-controller for Terraform

# GitOps without Git

```mermaid
flowchart LR

subgraph Internet
A((C.I.))
H(OCI Registry)
W(Webhook)
end

A --> H --> W -- notify --> R

subgraph Cluster
subgraph Flux
R((Receiver))
O -- pull --> H
O((OCIRepository))
K((Kustomization))
O -- notify --> K
K -- pull --> O
R --> O
end

L((K8s))
K --> L
end
```
{:
  relative_height="90"
}

# OCI Capabilities and Features

# `OCIRepository`

```mermaid
flowchart LR

A((User)) --> B(Git Repository)
B --> C((CI Job))
C --> D[Container Registry]
D --> E((Flux))
E --> F[Staging]
E --> G[Production]
```
{:
  relative_height="60"
}

# Unparalleled Helm support

* Drift correction
* Stable release is coming - Flux 2.1
* (I know we already picked ytt! but for those that didn't...)

# Call to Action

* Download VSCode "GitOps Tools for Flux" - check out Prerelease channel!

Find the extension from the VSCode marketplaces — also visit us at [fluxcd.io](https://fluxcd.io)

# Call to Action

Read the docs & vote for Flux!
