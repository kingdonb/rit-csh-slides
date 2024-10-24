# Cozystack

subtitle
:   Bare-Metal Talos PaaS

author
:   Kingdon Barrett (yebyen)

institution
:   Computer Science House

theme
:   rabbit-theme-wwinternalstyle

date
:   2024-10-23

allotted-time
:   55m

# Cozystack.io

# cozystack.io/docs/get-started

# Why Cozystack?

* Does everything with HelmRelease
* {::wait/}Comes with Flux-Operator pre-installed
* {::wait/}No SSOT
* {::wait/}In-built Helm Repository

Builds cloud on bare metal

# Public Cloud

* Private Cloud
* Internal Cloud
* PAAS full / hosted (CNI, Networking)
* {::wait/}Immutable host OS: Talos Linux
* {::wait/}Virtualized Infrastructure (KVM)

Take advantage of KubeVirt more easily

# Distributed Storage

* Piraeus Operator
* {::wait/}Linstor, DRBD
* {::wait/}Cilium, KubeOVN
* {::wait/}Kamaji + `KubernetesCluster`
* {::wait/}Multi-Tenancy through VM isolation

# Flux Operator

1. Installed on the management cluster
1. {::wait/}Available as add-on for `kubernetes-cluster`
1. {::wait/}Managed Flux experience
1. {::wait/}... so you can skip bootstrap
1. {::wait/}But don't skip all documentation!

Docs: [fluxcd.control-plane.io/operator](https://fluxcd.control-plane.io/operator/)

# Flux Operator

* Alternative to Bootstrap
* New this year
* {::wait/}Stefan Prodan
* {::wait/}[fluxcd.control-plane.io/operator][]

[fluxcd.control-plane.io/operator]: https://fluxcd.control-plane.io/operator

# What else?

* KubeVirt
* {::wait/}Linstor + DRBD
* {::wait/}Piraeus Operator
* {::wait/}Replicated Storage

Storage Classes: (`local`, `replicated`)

# Kubernetes + KubeVirt

* Kamaji
* {::wait/}`KubevirtCluster`
* {::wait/}Cluster-API
* {::wait/}etcd-operator
* {::wait/}Addons (cert-manager, nginx)

# Databases

* Kafka, MariaDB, Grafana
* Object Storage (SeaweedFS / S3)
* {::wait/}Postgres, RabbitMQ, Redis
* {::wait/}VictoriaMetrics, Prometheus
* {::wait/}Monitoring, Alerta, VPN (telepresence)
* {::wait/}Clickhouse

# LoadBalancer, Network Stuff

* MetalLB
* {::wait/}Cilium
* {::wait/}KubeOVN
* {::wait/}VPCs
* {::wait/}Cert-Manager

# Cozystack

* Dashboard
* Installer
* System + Core packages

# Cozystack Dev

* Great developer experience
* {::wait/}Build easily
* {::wait/}Talos installer

# Living the Dream

* KubeVirt -> Kubernetes
* {::wait/} Disposable Infrastructure
* {::wait/} Dynamic Dev Environments
* vs PXE Booting
