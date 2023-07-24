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

* Lightning

# 1. Flux does GitOps

Rabbit 3.0.3 does Mermaid diagrams!

```mermaid
graph TD;
  A-->B;
  A-->C;
  B-->D;
  C-->D;
```
{:
  relative_height="90"
}

# Roadmap

* The completion of this milestone will be marked by the v2.0.0 release of the Flux distribution and CLI.
* GitRepository, Kustomization, and Receiver `v1` ✅

# Flux at Scale

Cloud and infrastructure vendors providing Flux-enabled dev environments to customers
Multi-tenancy at scale

# Sharding

Why is Sharding interesting to Zscaler and customers like it?
(Flux does Sharding)

Flux at Zscaler - what do they do?

If you have 10,000+ Flux resources, and some of them are highly active
How do we avoid starvation? All user SLOs must be met by Flux

# Sharding

Put heavy consumers on their own separate Flux controllers
(Flux enables Sharding through labels - Horizontally scale)

All user SLOs must be met by Flux - How does sharding help?
Those heavy-use customers will not starve out their neighbors

# Helm Drift Detection

Why is this important? 

# OCI

You can make your deployment safe - commits that go through CI
Secure Provenance, Cosign + Sigstore, Security Audits

Flux makes GitOps even safer

# Flux Update

* Flux Core maintainers have built:
* e2e suites
* 2.0.0 reps several major upgrades

# Major Upgrades

* An overhaul of Git v2 - CodeCommit, Bitbucket Server
* Kustomize 5, Helm 3.12, Cosign 2.0
* controller-runtime v0.15
* Alpine 3.18+

# Reporting Changes

* Now we report on which CVEs are patched
  * (even when they don't affect Flux)
  * It can be a change in a package
  * Sometimes these CVEs can't be fixed
* So users will track this if it's important for them
  * This change helps users fast-tracking "when may I upgrade"
  * ✅✅✅

# Resource Allocation

* 2.0.0-rc.2 - Flux is now system-cluster-critical.

This priority class will reduce the chances of Flux controllers being evicted
before other non-critical workloads and prevents the pods from being
permanently unavailable.

# Testing

* What's missing?
  Testers 🫵🙋 (You!)

# Flux Bug Scrub

* Flux Bug Scrub - weekly
  [fluxcd.io/#calendar][]

[fluxcd.io/#calendar]: https://fluxcd.io/#calendar

# Flux Talks

![](images/fluxqr.jpeg "bit.ly/gitopscon2023"){:width='250' height='250'}

[kingdonb/eks-cluster]: https://github.com/kingdonb/eks-cluster
[kingdonb/taking-bartholo]: https://github.com/kingdonb/taking-bartholo
[kingdonb/stats-tracker-ghcr]: https://github.com/kingdonb/stats-tracker-ghcr
[tobiaskuntzsch/kubernetes-operator]: https://gitlab.com/tobiaskuntzsch/kubernetes-operator
[ManageIQ/kubeclient]: https://github.com/ManageIQ/kubeclient
[kingdonb/cdcongitopscon2023-slides]: https://github.com/kingdonb/cdcongitopscon2023-slides
