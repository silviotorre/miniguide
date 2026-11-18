# FinOps: engineering field notes

Operate cost as a workload signal alongside reliability, latency and security. Optimize **cost per useful outcome**, not the invoice alone.

## Attribute spend
- Define `owner`, `service`, `environment` and `cost-center` metadata at provisioning time; enforce naming/tag policy in IaC.
- Map subscription/account, resource group, resource and Kubernetes namespace/workload costs where supported. Tags alone do **not** allocate every shared charge.
- Track **allocated**, **shared** and **unallocated** spend separately. Document allocation rules for clusters, networking, observability and platform overhead.
- Reconcile allocated totals to the provider bill; monitor unallocated spend and metadata coverage.

## Guardrails and signals
- Set budgets and anomaly alerts by team/environment; route alerts to accountable owners. **Budget alerts are not automatic spend caps.**
- Review forecast vs actual and investigate sudden changes in consumption, unit price, data transfer or retention.
- Put cost estimates and ownership into design/PR reviews; gate exceptional resource sizes or environments via policy and approval.

## Workload efficiency
- Inspect idle non-production resources, unattached storage, oversized compute, low-utilization node pools and excess log retention.
- Compare requests/limits, autoscaler floor, utilization and reliability headroom before right-sizing AKS workloads.
- Evaluate commitments/discounts only against stable baseline demand; avoid trading away needed elasticity.
- Confirm savings against the **post-change bill** and service SLOs; do not confuse lower spend with better efficiency.

## Unit economics
- Choose a stable denominator: `cost / successful request`, `cost / completed job`, or `cost / tenant` per reporting period.
- Include the agreed shared-cost allocation in the numerator; report traffic volume, success rate and unit cost together.
- Example: `$1,200 attributable monthly cost / 600,000 successful jobs = $0.002/job`. State whether this is direct or fully loaded cost.
- For AI workloads, attribute model/token/tool costs to runs or tenants where telemetry permits; avoid mixing model spend with infrastructure totals without a defined allocation rule.

## Review loop
`instrument → allocate → baseline → detect → change → validate`

Weekly: anomalies and idle resources. Monthly: unit-cost trend, allocation coverage, budget variance and SLO impact. Record owner, decision and measured outcome.

References: [FinOps Framework](https://www.finops.org/framework/), [Allocation](https://www.finops.org/framework/capabilities/allocation/), [Unit Economics](https://www.finops.org/framework/capabilities/unit-economics/), [Architecting & Workload Placement](https://www.finops.org/framework/capabilities/architecting-workload-placement/).
