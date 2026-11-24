# Agent Identity and Isolation — Field Notes

Treat model output as an untrusted action proposal, not an authorization decision.

## Identity and tool access

- Use workload identity for service-owned operations; use delegated user identity when acting on behalf of a user. Never silently fall back to a more privileged service identity.
- Authorize every tool invocation at the runtime/gateway and enforce resource permissions at the destination. Bind the decision to principal, tenant, operation and resource.
- Prefer short-lived, audience-bound credentials with minimal scopes; keep tokens outside prompts, model-visible tool results and logs. Never forward a token to a different audience.
- Default-deny tool access; separate read and write capabilities. Validate arguments against schema and business policy, not just tool names.

## Execution and tenant boundaries

- Run untrusted code in disposable, resource-limited sandboxes; use stronger isolation (e.g. VM-backed execution) when the threat model requires it.
- Deny network egress by default; allow only required destinations through controlled paths. On Kubernetes, verify that the network plugin actually enforces NetworkPolicy.
- Avoid privileged containers, host mounts and ambient credentials. A namespace alone is not a hard security boundary.
- Derive tenant identity from authenticated context, not model arguments. Partition memory, retrieval, checkpoints, caches and artifacts; enforce tenant checks on every access.

## Side effects and verification

- Require approval for high-impact writes; bind approval to exact normalized arguments, identity, target and expiry. Reauthorize before execution; deny on missing or stale approval.
- Audit run ID, principal, tenant, tool, policy decision and outcome without recording secrets.
- Negative tests: wrong tenant, expired/wrong-audience token, unauthorized tool, changed approved arguments, blocked egress and sandbox escape attempts. Verify denial and absence of side effects.

## References

- [MCP authorization](https://py.sdk.modelcontextprotocol.io/run/authorization/)
- [Kubernetes multi-tenancy](https://kubernetes.io/docs/concepts/security/multi-tenancy/)
- [Kubernetes NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/network-policies/)
