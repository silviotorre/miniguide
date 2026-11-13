# Policy as Code — Field Notes

Treat policy as versioned, testable release logic. Run checks before deployment; enforce critical invariants at the runtime boundary.

| Boundary | Control | Operational rule |
|---|---|---|
| Source / CI | OPA + Conftest on YAML, JSON or Terraform plans | Block noncompliant changes; return actionable failures |
| Deployment | IaC validation and environment gates | Validate rendered artifacts, not only source templates |
| Kubernetes admission | Native ValidatingAdmissionPolicy (CEL) or Gatekeeper | Enforce on create/update; scope bindings and exclusions explicitly |
| Running estate | Gatekeeper audit / scheduled drift scans | Detect existing violations; admission alone does not remediate drift |

## Minimal CI check

```powershell
# policy/ contains Rego rules; manifests/ contains rendered YAML
conftest test manifests/ --policy policy/
if ($LASTEXITCODE -ne 0) { throw "Policy validation failed" }
```

```bash
conftest test manifests/ --policy policy/
```

Example Rego v1 policy (`policy/labels.rego`):

```rego
package main

import rego.v1

deny contains msg if {
  input.kind == "Deployment"
  not input.metadata.labels["owner"]
  msg := "Deployment requires metadata.labels.owner"
}
```

## Enforcement checklist

- **Guardrail vs gate:** warn/audit for rollout; deny for reviewed security invariants. Record exception owner and expiry.
- **Test both outcomes:** compliant fixture passes; violating fixture fails. Version policy with workload manifests.
- **Fail behavior:** explicitly review webhook failure policy, availability, scope and break-glass access; avoid accidental cluster-wide lockout.
- **Drift:** periodically compare live configuration to approved state; triage violations separately from admission decisions.
- **Feedback:** surface rule ID, resource path, remediation and policy version in PR/CI output. Track false positives.

## References

- [Conftest](https://github.com/open-policy-agent/conftest)
- [OPA Kubernetes admission](https://www.openpolicyagent.org/docs/kubernetes)
- [Gatekeeper validation and audit](https://open-policy-agent.github.io/gatekeeper/website/docs/howto/)
- [Kubernetes admission policies](https://kubernetes.io/docs/tutorials/cluster-management/admission-policies/)
