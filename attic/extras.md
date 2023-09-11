
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
* Big Memory and CPU Use Improvements
* Monitoring

# Call to Action

* Download VSCode "GitOps Tools for Flux" - check out Prerelease channel!

Find the extension from the VSCode marketplaces — also visit us at [fluxcd.io](https://fluxcd.io)

# Call to Action

Read the docs & vote for Flux!
