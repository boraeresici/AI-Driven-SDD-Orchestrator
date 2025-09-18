# Architecture & Design: [FEATURE NAME]

**Template Version**: 1.1.0
**Created**: [DATE]
**Status**: Draft
**Input**: "$USER_IDEA"

## 1. Context
- High-level problem statement
- Constraints (technical, business, compliance)
- Related research / feasibility outcomes

## 2. System Overview
- Major components and responsibilities
- Key integration points
- External dependencies (APIs, services, infra)

## 3. Logical Architecture
- Modules, services, and layers
- Interaction patterns (sync/async, messaging, events)
- Diagrams (if available)

## 4. Data Flow
- Request / response lifecycle
- Event flows and background jobs
- Data access strategy (read/write paths, caching, queues)
- Idempotency and exactly-once/at-least-once semantics (optional)

## 5. Deployment & Runtime Topology
- Target environments (dev, staging, prod)
- Scaling model (horizontal, vertical, auto-scaling)
- Runtime dependencies (queues, databases, caches)
- Cloud/on-prem specifics
- IaC standard (Terraform/Pulumi vs) (optional)
- Environment config strategy (12-factor) (optional)

## 6. Non-Functional Requirements (NFRs)
- Performance (latency, throughput, concurrency)
- Scalability targets
- Reliability & availability (SLOs, SLAs)
- Security & compliance (privacy, data residency)
- Accessibility and usability
- Cost efficiency (optional)
- Operability (maintainability, runbooks) (optional)

## 7. Security
- Authentication & Authorization (AuthN/AuthZ)
- Secrets & key management
- Threat model highlights
- Data encryption in transit & at rest
- SBOM/Dependency policy (optional)
- Secrets rotation policy (optional)

## 8. Observability
- Logging strategy (structured, levels, storage)
- Metrics (system KPIs, alerts)
- Distributed tracing (critical flows)
- Incident response integration

## 9. Design Decisions
- Key architectural choices
- Alternatives considered & trade-offs
- Decision rationale and alignment with feasibility research
- DEC-### decision IDs for traceability (optional)

## 10. Risks & Mitigations
- Technical risks (tech debt, integration, vendor lock-in)
- Mitigation strategies (proof-of-concepts, fallback plans)

## 11. Migration / Rollout Strategy (if applicable)
- Incremental rollout steps
- Backward compatibility requirements
- Data migration strategy