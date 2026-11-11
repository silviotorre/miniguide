# CI/CD Delivery Field Notes

Operational baseline for Azure DevOps and similar delivery systems.

## Identity and trust
- Prefer short-lived OIDC/workload identity federation over client secrets or PATs.
- Scope each service connection to the target environment and explicitly authorize consuming pipelines; do not grant all-pipeline access by default.
- Separate build identity from deploy identity. Keep production RBAC and approvals outside developer-controlled YAML.
- Azure DevOps public-cloud WIF: review legacy `vstoken.dev.azure.com` issuers; applicable connections must migrate to the Microsoft Entra issuer before **2027-07-01**. Check exclusions for sovereign clouds and multitenant apps.

## Artifact flow
- Build once, test, scan, attest, publish immutable artifact (digest/version), then promote the **same artifact** through environments.
- Avoid rebuilding on promotion; pin container images by digest and record provenance, SBOM and deployment metadata.
- Make rollback an explicit deployment operation; database/schema rollback needs separate compatibility planning.

## Reuse and environment gates
- Reuse versioned templates for build, scan and deployment mechanics; keep application-specific inputs small.
- Put approvals/checks on protected environments or resources, not solely in editable pipeline definitions.
- Constrain privileged agents, secrets, variable groups and service connections to the smallest authorized scope.
- Protect template repositories and production branches with review policies.

## Failure triage
1. **Checkout/build:** verify source ref, agent image, toolchain lockfiles and cache key.
2. **Identity:** inspect service connection authorization, issuer/subject/audience and federated credential; never print tokens.
3. **Artifact:** compare digest, signature/provenance and registry permissions.
4. **Deployment:** inspect environment checks, resource locks, rollout health and Kubernetes events.
5. **Intermittent failures:** distinguish infrastructure throttling from deterministic test failure before retrying; bound retries and preserve correlation IDs.

## Minimal release evidence
`commit SHA → build run → artifact digest → policy/scan result → approval → deployment run → health/rollback outcome`

## References
- [Azure Pipelines service connections](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops)
- [Azure Resource Manager workload identity](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)
- [Workload identity troubleshooting](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/troubleshoot-workload-identity?view=azure-devops)
