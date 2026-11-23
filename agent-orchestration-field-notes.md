# Agent orchestration — field notes

## Control plane
- **Routing:** choose manager-as-tools for centralized decisions, or handoffs for transferring control. Restrict destinations, tool scope and forwarded context; routing is not authorization.
- **Scheduling:** persist a run queue with priority, tenant fairness, deadlines and admission limits. Lease work to workers; expect duplicate delivery after lease expiry.
- **Concurrency:** bound active runs, model requests and tool calls separately. Apply per-tenant quotas and backpressure; serialize conflicting side effects by resource key.

## Execution contract
- **Timeout/cancellation:** propagate a deadline through model and tool calls. Cancellation is best-effort: reconcile in-flight external actions before declaring a run cancelled.
- **Retries:** retry transient inference/read failures with capped exponential backoff and jitter. For writes, use operation IDs and downstream idempotency or inspect outcome before replay.
- **State transitions:** define `queued -> running -> waiting_for_tool | waiting_for_approval -> running -> completed | failed | cancelled` as an application-owned state machine. Persist transitions atomically with outbox events where needed.
- **Human approval:** pause before privileged/irreversible tools; bind approval to actor, exact action/arguments, expiry and policy version. Reauthorize on resume; deny by default on timeout.

## Operator checks
- Trace `run_id`, `attempt_id`, `tool_call_id` and `correlation_id`; measure queue age, active leases, retry rate, approval wait and stuck runs.
- Inject worker crashes after a tool write, expired approvals, duplicate deliveries and cancellation races. Verify no uncontrolled side-effect replay.
- A checkpoint restores workflow state, **not** an external transaction. The orchestrator enforces budgets, authorization and termination; the model does not.

## References
- [OpenAI Agents SDK — orchestration](https://openai.github.io/openai-agents-python/multi_agent/)
- [OpenAI Agents SDK — handoffs](https://openai.github.io/openai-agents-python/handoffs/)
- [Microsoft Agent Framework — human-in-the-loop](https://learn.microsoft.com/en-us/agent-framework/workflows/human-in-the-loop)
- [Microsoft Agent Framework — checkpoints](https://learn.microsoft.com/en-us/agent-framework/workflows/checkpoints)
