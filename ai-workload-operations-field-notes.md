# AI workload operations — field notes

## Runtime contract
- Treat model endpoints as versioned external dependencies: pin deployment/model identifiers, region, quota, and fallback policy; test changes before promotion.
- Bound the request context: retrieval sources, tenant scope, data classification, retention, and prompt/tool input trust. Never log raw sensitive prompts by default.
- Separate inference from upstream retrieval and downstream actions; define independent failure budgets and ownership.

## Latency and overload
- Budget end-to-end latency: queue + retrieval + prefill/first token + generation + post-processing. Track p50/p95/p99 and time to first token for streams.
- Set a total deadline and per-dependency timeouts; cancel abandoned work and cap concurrent in-flight requests.
- Handle 429 with provider retry hints (Azure OpenAI: `retry-after-ms`); otherwise bounded exponential backoff with jitter. Avoid nested SDK + application retries.
- Retry only before externally visible output or when replay is demonstrably safe. Interrupted streams and side-effecting tool calls need explicit recovery semantics.
- Distinguish quota throttling, capacity overload, authentication failures, content-policy rejections, and application errors. Do not retry deterministic failures.

## Cost and telemetry
- Attribute requests and **reported** input/output token usage to service, environment, tenant/cost center, model/deployment, and operation; avoid high-cardinality metric labels.
- Track cost per successful operation, token consumption, cache hit rate, throttling, and budget burn. Reconcile provider billing with application estimates.
- Correlate request/trace IDs across gateway, retrieval, inference, and downstream dependencies. Capture model/version, duration, status, retry count, and token usage; redact content and secrets.
- OpenTelemetry GenAI semantic conventions are evolving: pin the emitted convention version and validate dashboards after upgrades.

## Evaluation and release gates
- Version prompts, retrieval configuration, model routing, and evaluation datasets together.
- Gate rollout on task-quality regression, safety checks, latency, cost, and failure rates; use shadow/canary traffic where data policy permits.
- Alert on user-visible failure and SLO burn, not token volume alone. Define rollback to a known-good configuration.

## References
- [Azure OpenAI quota and throttling](https://learn.microsoft.com/en-us/azure/foundry/openai/how-to/quota)
- [Azure Well-Architected throttling guidance](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/throttling)
- [OpenTelemetry GenAI conventions](https://opentelemetry.io/docs/specs/semconv/gen-ai/)
