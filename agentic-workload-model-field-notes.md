# Agentic workload model — field notes

## Runtime primitives
- **Agent:** model-driven decision component with instructions, permitted tools and an execution policy; not an independent security principal.
- **Run:** bounded execution attempt with a run ID, deadline, budget, status and trace. **Session:** conversation/context continuity across runs; do not assume a session is a durable transaction.
- **Tool:** typed external capability. Validate arguments, authorize each invocation at the execution boundary, and classify read-only vs side-effecting operations.
- **Context:** scoped instructions, inputs, retrieved evidence and tool outputs. **Memory:** persisted state retrieved across runs; version, expire and isolate by tenant.
- **Checkpoint:** durable, versioned snapshot of resumable workflow state, pending actions and correlation IDs. It does not undo completed side effects.
- **Approval:** explicit allow/deny decision bound to an exact action, arguments and identity; pause before side effects and persist the decision.
- **Handoff:** controlled transfer of execution to another agent or operator; pass only necessary context and preserve ownership, trace and policy boundaries.

## Minimal lifecycle
`created -> running -> waiting_for_tool | waiting_for_approval | handed_off -> running -> completed | failed | cancelled`

- Treat states as a **reference model**, not a universal SDK state machine. Define terminal states, ownership and transitions in the host runtime.
- Persist `run_id`, `session_id`, `trace_id`, `tenant_id`, `policy_version`, `deadline`, and checkpoint reference; keep secrets and raw sensitive content out of telemetry.
- On resume, recheck authorization, deadline and tool idempotency. Never replay a side-effecting call solely because a model response or worker timed out.
- Bound autonomy with maximum turns, tool invocations, elapsed time and cost; fail closed on missing approvals or unavailable policy enforcement.

## Operational boundary
- **Model proposes; host enforces.** Tool permissions, isolation, budgets, approval and audit must be enforced outside the model.
- Distinguish a retry of model inference from a retry of a tool action. Use operation IDs and downstream idempotency where available; otherwise reconcile before retry.
- A handoff is not automatically a new run; session persistence, checkpoint semantics and handoff behavior are framework-specific.

## References
- [OpenAI Agents SDK — sessions](https://openai.github.io/openai-agents-python/sessions/)
- [OpenAI Agents SDK — human-in-the-loop](https://openai.github.io/openai-agents-python/human_in_the_loop/)
- [Microsoft Agent Framework — human-in-the-loop workflows](https://learn.microsoft.com/en-us/agent-framework/workflows/human-in-the-loop)
