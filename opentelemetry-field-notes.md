# OpenTelemetry — Field Notes

## Signals and correlation
- **Traces:** spans capture request paths and latency; use span links for asynchronous causality.
- **Metrics:** counters, histograms and gauges for rates, errors, latency and saturation; avoid high-cardinality labels.
- **Logs:** structured events with `trace_id` and `span_id` for trace correlation.
- Set resource attributes: `service.name`, `service.version`, `deployment.environment.name`; add Kubernetes metadata at collection time.

## Propagation
- Propagate W3C `traceparent` and `tracestate` across HTTP boundaries; inject/extract context in message headers for async hops.
- Do not treat a business correlation ID as a trace ID. Keep both where needed.
- Do not put secrets or PII in baggage, span attributes or logs.

## Collector pipeline
```yaml
receivers:
  otlp:
    protocols:
      grpc:
        endpoint: 0.0.0.0:4317
processors:
  memory_limiter:
    check_interval: 1s
    limit_mib: 256
  batch: {}
exporters:
  debug: {}
service:
  pipelines:
    traces:
      receivers: [otlp]
      processors: [memory_limiter, batch]
      exporters: [debug]
```
Lab-only exporter; replace `debug` with a secured production backend. Configure metrics/logs pipelines separately, TLS, auth, queueing and limits.

## Incident checklist
1. Verify instrumentation, `service.name`, sampling and OTLP endpoint/protocol.
2. Check context injection/extraction at gateways and queues; look for broken parentage.
3. Inspect Collector receiver errors, dropped data, memory pressure and exporter retries.
4. Compare trace latency with RED metrics and correlated logs; validate timestamps.
5. Restrict attribute cardinality and sensitive payload capture before increasing sampling.

References: [Signals](https://opentelemetry.io/docs/concepts/signals/), [Context propagation](https://opentelemetry.io/docs/concepts/context-propagation/), [Collector](https://opentelemetry.io/docs/collector/).
