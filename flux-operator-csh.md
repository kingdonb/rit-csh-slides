# Flux Operator

subtitle
:   Using Flux on OpenShift

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

# Flux in 2 Minutes

# GitOps

* For Beginners: (ELI5)
* {::wait/}Developer just pushes changes
* {::wait/}(**new desired state**) to Git
* {::wait/}They go automatically to **Kubernetes**

(User Experience should be simple)

# GitOps

* For Beginners: (ELI5)
* **Developer** just pushes changes
* (*new desired state*) to _Git_
* {::wait/}...notify us if everything went alright

(User Experience should be simple)

# GitOps

* Developer just pushes changes to **Git**

* {::wait/}...in case anything changes
  **GitOps** reconciling (**Flux**)
  will automatically put it back
  This is called **Drift Correction**

Vs. regular imperative CI/CD

# 4 Principles of GitOps

1. **Declarative** Configuration
1. {::wait/}*Versioned* Storage
1. {::wait/}Pulled _automatically_
1. {::wait/}Reconciled _continuously_

Detail: [opengitops.dev](https://opengitops.dev) from GitOps WG

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
