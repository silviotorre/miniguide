# Agent Harness Engineering — Field Notes

Apply platform engineering and distributed-systems disciplines to agentic workloads. A harness is the runtime boundary around model decisions: it owns execution, state, tools, policy and evidence, not the model itself.

## Map the operational concerns, not the implementations

| Platform concern | Agentic counterpart |
| --- | --- |
| Workload | Agent definition / run instance |
| Scheduler | Orchestrator, queue and concurrency control |
| Service account | Scoped agent or delegated user identity |
| Isolation | Execution sandbox and tenant boundary |
| Network / policy controls | Tool authorization, argument validation and egress policy |
| Distributed tracing | Correlated model, tool and run spans |
| Resource limits | Token, wall-clock and tool-call budgets |
| Recovery | Checkpoint and run recovery |
| FinOps | Model, token and tool cost attribution per task |

These are analogies, not equivalences. Model outputs are probabilistic; context and external state evolve; tools can cause irreversible side effects; execution paths and costs vary between runs. A Kubernetes service account alone does not authorize business actions.

## Production baseline

- Version model configuration, prompts, tool schemas and policy together; gate promotion on representative evaluations and negative tests.
- Admit runs with explicit identity, deadline, budget and allowed tools. Enforce limits outside the model; deny unauthorized actions and require approval for sensitive writes.
- Persist run state and action identifiers; reconcile ambiguous tool outcomes before retrying. Checkpointing does not undo external writes.
- Correlate traces with policy decisions and outcomes; redact sensitive payloads. Track task success, latency, cost per successful task and budget exhaustion.
- Exercise tool timeouts, duplicate delivery, denied access, exhausted budgets and restart recovery before rollout.

See [Platform Engineering](platform-engineering-field-notes.md), [Agent Orchestration](agent-orchestration-field-notes.md), [Identity and Isolation](agent-identity-isolation-field-notes.md) and [Observability and Reliability](agent-observability-reliability-field-notes.md).

References: [Kubernetes service accounts](https://kubernetes.io/docs/concepts/security/service-accounts/), [OpenAI Agents SDK](https://openai.github.io/openai-agents-python/).
