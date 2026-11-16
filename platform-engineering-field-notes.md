# Platform Engineering — Field Notes

**Intent:** expose a reliable, self-service workload platform; keep application teams accountable for their services.

## Golden paths
- Offer versioned templates for service bootstrap, CI/CD, identity, observability and deployment.
- Make the secure default the shortest path; document supported escape hatches.
- Test templates against a reference workload before rollout.

## Self-service contract
- Expose a portal, CLI or API backed by declarative workflows; the UI is not the platform.
- Model inputs as a contract: owner, environment, workload class, data classification, SLO tier.
- Return auditable resource IDs, deployment status, ownership and actionable errors.
- Prefer asynchronous reconciliation and idempotent requests over long-running synchronous provisioning.

## Guardrails
- Enforce identity, least privilege, policy-as-code, secrets handling and resource quotas at platform boundaries.
- Separate paved-road recommendations from mandatory admission controls.
- Version policies; test exceptions, rollback and drift detection.

## Ownership and reliability
- **Platform team:** API/template compatibility, provisioning success, platform availability, support paths.
- **Service team:** application SLOs, runtime behavior, on-call and data ownership.
- Track time-to-first-deploy, self-service completion rate, lead time, failed provisions and developer friction.
- Publish platform SLOs for critical APIs and reconciliation; measure from the consumer's perspective.

## Operational checks
1. Can a new service deploy without a privileged ticket?
2. Are credentials short-lived and workload-scoped?
3. Can an owner trace a failed request from portal/API to controller and cloud resource?
4. Are upgrades backward-compatible or explicitly migrated?
5. Can teams opt out without bypassing security controls?

References: [CNCF Platform Engineering](https://tag-app-delivery.cncf.io/whitepapers/platforms/) · [Kubernetes controllers](https://kubernetes.io/docs/concepts/architecture/controller/) · [OpenGitOps principles](https://opengitops.dev/).
