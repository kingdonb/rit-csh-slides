# YouChoose Flux Pitch Deck

subtitle
:   What's Great About Flux

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

start-time
:   2023-07-25T14:00:00-04:00

end-time
:   2023-07-25T15:30:00-04:00

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

L((K8s))

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

subgraph Flux
G -- pull --> B
G((GitRepository))
K((Kustomization))
G --> K
K --> G
end

subgraph Cluster
L((Kubernetes))
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

subgraph Flux
R((Receiver))
G -- pull --> B
G((GitRepository))
K((Kustomization))
G -- notify --> K
K -- pull --> G
R --> G
end

subgraph Cluster
L((Kubernetes))
K --> L
end
```
{:
  relative_height="90"
}

# GitOps without Git

```mermaid
flowchart LR

subgraph Internet
A((User))
H(OCI Registry)
W(Webhook)
end

A --> H --> W -- notify --> R

subgraph Flux
R((Receiver))
O -- pull --> H
O((OCIRepository))
K((Kustomization))
O -- notify --> K
K -- pull --> O
R --> O
end

subgraph Cluster
L((Kubernetes))
K --> L
end
```
{:
  relative_height="90"
}

# What else is new in Flux 2.0?

# Automation

# How is OCI used?

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
  relative_height="40"
}

# Unparalleled Helm support

# Ecosystem

# Partners in Industry

# Adopters

# Community
