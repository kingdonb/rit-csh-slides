# CNCF Webinar

subtitle
:   What is Bootstrapping?

author
:   Kingdon Barrett

institution
:   Weaveworks

theme
:   rabbit-theme-wwinternalstyle

date
:   2023-09-14

allotted-time
:   2m

# Flux Manages Itself

# GitOps

If this is GitOps...

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

And Flux does GitOps...

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

# How does Flux get on the cluster?

Typically...

* ???
* {::wait/}It goes into Git
* {::wait/}(There are other ways as we will see)

# Bootstrap

# Bootstrap Decomposed

* `clusters/my-cluster/`
  * `flux-system/`
    * `gotk-components` - Flux itself
    * `gotk-sync` - Business end of Flux

CRDs "flux-system" GitRepository and Kustomization
represent a bootstrapped Flux installation

# GitRepository API v1

```yaml
---
apiVersion: source.toolkit.fluxcd.io/v1
kind: GitRepository
metadata:
  name: flux-system
  namespace: flux-system
spec:
  interval: 1m0s
  ref:
    branch: main
  secretRef:
    name: flux-system
  url: ssh://git@github.com/kingdon-ci/fleet-infra
```

# GitRepository

* Reconcile on interval - download the latest
* Single ref spec - branch main in this case
* {::wait/}Can have other configuration for auth, signature verification, etc.
* {::wait/}See the API docs and getting started guide for more details

# Kustomization API v1

```
---
apiVersion: kustomize.toolkit.fluxcd.io/v1
kind: Kustomization
metadata:
  name: flux-system
  namespace: flux-system
spec:
  interval: 10m0s
  timeout: 1m0s
  retryInterval: 1m30s
  path: ./clusters/test/limnocentral
  prune: true
  sourceRef:
    kind: GitRepository
    name: flux-system
```

# Flux Kustomization

* Not to be confused with Kustomize Overlay

```yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
- gotk-components.yaml
- gotk-sync.yaml
```

# Flux Kustomization

* Reconcile on interval - dry run and atomic apply
* Single ref spec
* {::wait/}(Optionally) wait for healthy status and error if resources do not become healthy
* {::wait/}Configurable retry interval when health check fails
* Observable through CRD Status,
* {::wait/}Notifications (Alerts)
* {::wait/}and Events

# Bootstrap Components

* gotk-sync - what we just saw
* gotk-components - Flux itself

# Other Storage Backends

* GitOps does not require Git
* {::wait/}It can be any versioned store
* {::wait/}Spec.ref need not point to a branch ref
* {::wait/}Conventionally release-grade software uses SemVer tags

# Flux Also Supports

* `Bucket` - cloud provider s3-compatible
* {::wait/}`HelmRepository`
* {::wait/}`HelmRepository`: type: oci
* {::wait/}`OCIRepository`
