# Cozystack

subtitle
:   Bare-Metal Talos PaaS

author
:   Kingdon Barrett

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

# On OpenShift

* [operatorhub.io/operator/flux-operator][]
* Thanks CSH OpComm! (Thanks Mary)

You have this preinstalled

[operatorhub.io/operator/flux-operator]: https://operatorhub.io/operator/flux-operator

# CSH OpenShift

* [console.okd4.csh.rit.edu][]
* CSH SSO

# You Need (prereqs)

* `brew install openshift-cli`
* `brew install kubectl`
* `brew install fluxcd/tap/flux`
* `brew install helm` (optional)

# Flux Operator

* Bootstrap teaches how to use Flux
* {::wait/}You may want to start there
* {::wait/}GitOps as Single Source of Truth
* {::wait/}Multi-tenant environments can differ

# Single Source of Truth

* There isn't always one
* {::wait/} "Microsoft.Flux" cluster extension
* {::wait/} "We find our customers don't always want to have SSOT..."
* {::wait/} Flux Operator improves on Azure ARC

# Let's log in

* [console.okd4.csh.rit.edu][]
* Click your name in upper-right
* {::wait/}"Copy login command"
* {::wait/}"Display token" - (expires in 24h)

[console.okd4.csh.rit.edu]: https://console.okd4.csh.rit.edu

# Agenda

1. Have an app
1. Build an image
1. Deploy the app

# Configure GitOps

1. Define your source of truth
1. {::wait/}Multiple environments?
1. {::wait/}Multiple git repositories?
1. {::wait/}Dependencies? (ingress? certs?)

# Dev Environment

1. {::wait/}Image Update Automation
1. {::wait/}`Receiver` GitHub, etc. (webhook)
1. {::wait/}Notification (`Provider` - slack, etc.)
1. {::wait/}Image Tagging strategy - serial number?

# Production

1. {::wait/}`OCIRepository`
1. {::wait/}`HelmRelease` - `HelmChart`
1. {::wait/}Releases: Semantic Version?
1. {::wait/}GitHub Checks `Provider` notification

# Does Flux have a UI?


# Demo
