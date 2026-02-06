# ADRs Pack: Recent Architecture Decision Records (2025)

> Source: `src/asciidoc/modules/governance/pages/2025-reviews/`

---

## ADR Index (2025)

| ADR | Title | Date | Status | Impact |
|-----|-------|------|--------|--------|
| ADR-25-03 | Architecture Management Tool | November 11, 2025 | Accepted | Medium |
| ADR-25-02 | Orchestration Tool | October 29, 2025 | Accepted | Low |
| ADR-25-01 | Animal Registry System for gARI | August 31, 2025 | Accepted | Medium |

---

## ADR-25-01: Animal Registry System for gARI

| Field | Value |
|-------|-------|
| Status | Accepted |
| Impact | Medium |
| Demand Owner | Asif Jan |
| ADR Contributors | Anish Kejariwal, Alex Weigel |
| Publication Date | August 31, 2025 |

### Background

gARI (gRED Animal Resources Informatics) is a gRED vivarium management system platform. A high priority request was made in May 2025 to provide an animal registry system to gARI. Two solutions were evaluated:

1. **Data Ecosystems Registry** - A capability team focused on building an entity registry system
2. **FISH ARS** - A component of the pRED in-vivo data landscape providing globally unique, persistent and resolvable identifiers (GUPRI) for pRED animals

### Context

On July 23, 2025, gRED communicated the decision to use the Data Ecosystem Registry as the solution for gARI, reflecting long-term alignment with BER (Biological Entity Registration). It was decided not to use FISH ARS.

### Decision

The usage of the Data Ecosystem Registry for gARI should be considered as a **tactical gRED solution** which will be revisited once the BER recommendations have been published.

### Actions

1. **RDE WS7 BER project**:
   - RTS should consolidate FISH and gARI animal data models into a single model
   - CS-CoE Enterprise Architecture team must be consulted before final decisions

2. **CS-CoE decision making**:
   - Clarify governance and decision-making processes
   - Architecture decisions with broader impact should have EA team representation
   - CoE EA team should provide a proposal for operating within the CoE

---

## ADR-25-02: Orchestration Tool

| Field | Value |
|-------|-------|
| Status | Accepted |
| Impact | Low |
| Demand Owner | Imran Khan |
| ADR Contributors | Anish Kejariwal |
| Publication Date | October 29, 2025 |

### Background

The CoE organization lacked a standardized, modern orchestration platform for data pipelines and MLOps orchestration. Since 2024, parts of the legacy gCS organization had been leveraging open-source Dagster (OSS) in production with success:

- AI4DD (formerly MLDD): first adopters of Dagster
- gRED MLOps: selected Dagster over Kubeflow as part of initiative approval

### Context

The decision to purchase Dagster+ was made in the legacy gCS organization as part of the gRED Data Ecosystem initiative. With the creation of the CS-CoE organization in July 2025, this ADR documents the rationale, scope, and strategy.

### Decision

Complete the purchase of the 1-year Dagster+ license (~$150k). This decision:

- **Does not** establish Dagster+ as the data pipeline orchestration standard for the CoE
- **Does not** imply Dagster+ will be the standard for MLOps in CoE
- Provides a seed-and-grow pilot strategy

### Rationale for Dagster

- **Developer experience**: Asset-based approach, intuitive UI, graphical representation
- **Momentum**: Success in production, rapidly growing industry adoption
- **Integration**: Native integration with dbt, OpenLineage, W&B
- **Observability**: Strong monitoring UI for debugging complex workflows
- **Iteration speed**: Supports partial runs and resuming from failures

### Alternatives Considered

| Tool | Status |
|------|--------|
| Kubeflow | Successfully in production in legacy D&A, but complex API |
| Apache Airflow | Used in legacy D&A and gCS, weaker observability |
| SageMaker Pipelines | Previously used, experienced slow deployment |
| Nextflow | In active use with gRED FDFM |
| Argo Workflows | Successfully used in Spring Sciences platform |

### Follow-up

Formal checkpoint in Q1 2026 to evaluate:
- Ease of Use
- Adoption
- Validation against data pipeline and MLOps use cases
- Financial viability for broader adoption
- Migration effort required
- Security compliance status
- Operational efficiency

---

## ADR-25-03: CS-CoE Architecture Management Tool

| Field | Value |
|-------|-------|
| Status | Draft |
| Impact | Medium |
| Demand Owner | Alex Weigel |
| ADR Contributors | Saima Sherazi, Anish Kejariwal |
| Publication Date | November 11, 2025 |

### Background

The CS-CoE was established to unify and modernize the computation and data ecosystems across Roche's Research and Early Development (RED) organizations. An architecture management tool is required that supports documentation, analysis, and communication of architectural assets.

Two candidate solutions emerged:
1. **pRED Architecture Master Repository (AMR)** - Developed and used within pRED
2. **Archimedes** - Global vendor solution offered by Roche Digital Technology (RDT)

### Context

Architectural assets are currently dispersed across multiple repositories. pRED utilizes AMR with rich, curated content. gRED does not have something similar.

#### Archimedes Challenges

- **Scope and Complexity**: Covers all of Roche, can be overwhelming
- **Governance Limitations**: Wiki-like model, lacks role-based ownership
- **Business Capability Model Gaps**: Doesn't support ontological structures
- **Speed and Flexibility**: Changes require central administrative team

### Decision

A **phased strategy** is recommended:

1. **Continue leveraging AMR** as the operational architecture management tool
   - Extend scope to include both pRED and gRED
   - Establish common taxonomies
   - Onboard gRED applications

2. **Engage with RDT** to:
   - Establish automated data upload interface from AMR to Archimedes
   - Shape the evolution of Archimedes for research-specific needs
   - Establish cohesive approach for source of truth across systems

### Comparison

| Aspect | AMR | Archimedes |
|--------|-----|------------|
| Research-specific | ✅ Proven | ❌ Not yet adapted |
| Governance | ✅ Strong controls | ❌ Too open |
| Flexibility | ✅ Quick updates | ❌ Central admin required |
| Enterprise integration | ❌ Local solution | ✅ Enterprise-wide |
| Long-term sustainability | ⚠️ Depends on local support | ✅ RDT ownership |

---

## Key Themes Across 2025 ADRs

1. **Tactical vs Strategic**: Several decisions are tactical solutions pending broader CoE-wide decisions
2. **Pilot and Evaluate**: Seed-and-grow strategies with formal checkpoints
3. **Governance Clarity**: Need for clear decision-making processes in the new CS-CoE
4. **Tool Consolidation**: Balancing existing investments with long-term alignment
