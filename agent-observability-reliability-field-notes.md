# Agent Observability and Reliability — Field Notes

Treat an agent run as a distributed workflow with probabilistic decisions and potentially irreversible tool effects.

## Signals and SLOs

- Correlate run, model, tool, handoff and approval spans; propagate trace context across queues. Record run/step IDs in traces or logs, not metric labels.
- Measure end-to-end latency, eligible-run completion rate, tool failures, queue age, retries and budget exhaustion. Track tokens and cost per successful task.
- Separate operational success from task quality: evaluate representative tasks, tool selection, groundedness and policy violations. Version evaluation sets and thresholds.
- Persist an access-controlled audit trail of state transitions, actor, policy version, approval and tool outcome. Sampled traces are not an audit ledger; redact sensitive payloads before export.

## Recovery and bounded execution

- Persist checkpoints at durable state boundaries with workflow version, remaining budgets and tool outcome references.
- Retry transient failures with capped exponential backoff and jitter. For mutating tools, persist an operation ID and require downstream idempotency or reconcile uncertain outcomes before retrying.
- On restart, resume from the last committed checkpoint; revalidate permissions and approvals. Do not replay an entire run blindly.
- Enforce wall-clock deadlines, model/token limits, tool-call counts and concurrency in the runtime, including across retries and resumes. Stop or escalate on exhaustion.
- Use dependency-scoped circuit breakers and bounded queues; propagate cancellation where supported. Cancellation does not undo committed side effects.

## Incident checklist

1. Locate the failed run and last durable transition; distinguish model, tool, policy and infrastructure failures.
2. Check dependency health, queue pressure, remaining budget and evaluation regressions.
3. Reconcile unknown tool outcomes before resuming; quarantine unsafe runs.
4. Test timeout-after-write, duplicate delivery, worker crash, budget exhaustion and telemetry redaction.

## References

- [OpenTelemetry GenAI semantic conventions](https://opentelemetry.io/docs/specs/semconv/gen-ai/) — follow the current specification location and pin the schema version used by instrumentation.
- [OpenAI Agents SDK tracing](https://openai.github.io/openai-agents-python/tracing/) — example of run-level and nested operation tracing.
