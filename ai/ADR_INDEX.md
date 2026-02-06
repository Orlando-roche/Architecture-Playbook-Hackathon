# Architecture Decision Records Index

A complete index of all Architecture Decision Records (ADRs) in the CS-CoE Architecture Playbook.

---

## What are ADRs?

Architecture Decision Records document significant architectural decisions made through the Architecture Review Forum. They capture the context, rationale, and consequences of decisions to provide transparency and historical reference.

---

## ADR Summary

| Year | Count | Status |
|------|-------|--------|
| 2025 | 3 | Active |
| Pre-2025 | 0 | - |

---

## 2025 ADRs

| ID | Title | Date | Status | Impact | Demand Owner |
|----|-------|------|--------|--------|--------------|
| ADR-25-03 | Architecture Management Tool | Nov 11, 2025 | Accepted | Medium | Alex Weigel |
| ADR-25-02 | Orchestration Tool | Oct 29, 2025 | Accepted | Low | Imran Khan |
| ADR-25-01 | Animal Registry System for gARI | Aug 31, 2025 | Accepted | Medium | Asif Jan |

---

## ADR Details

### ADR-25-03: Architecture Management Tool

**Decision**: Continue leveraging AMR as the operational architecture management tool while engaging with RDT to shape Archimedes evolution.

**Key Points**:
- Phased strategy balancing immediate usability with long-term alignment
- AMR to be extended to include both pRED and gRED
- Automated data upload interface from AMR to Archimedes to be established

**Source**: `src/asciidoc/modules/governance/pages/2025-reviews/adr-25-03_architecture_management.adoc`

---

### ADR-25-02: Orchestration Tool

**Decision**: Complete purchase of 1-year Dagster+ license as a pilot, not as a CoE standard.

**Key Points**:
- Seed-and-grow pilot strategy
- Does not establish Dagster+ as the orchestration standard
- Formal checkpoint in Q1 2026 to evaluate

**Source**: `src/asciidoc/modules/governance/pages/2025-reviews/adr-25-02_orchestration-tool.adoc`

---

### ADR-25-01: Animal Registry System for gARI

**Decision**: Data Ecosystem Registry usage for gARI is a tactical solution pending BER recommendations.

**Key Points**:
- Tactical gRED solution, not a strategic decision
- Will be revisited once BER recommendations are published
- CS-CoE EA team must be consulted before final decisions

**Source**: `src/asciidoc/modules/governance/pages/2025-reviews/adr-25-01_animal-registry-gari.adoc`

---

## ADR by Topic

### Data & Integration
- ADR-25-01: Animal Registry System for gARI

### Tools & Platforms
- ADR-25-02: Orchestration Tool
- ADR-25-03: Architecture Management Tool

---

## ADR by Status

### Accepted
- ADR-25-01: Animal Registry System for gARI
- ADR-25-02: Orchestration Tool
- ADR-25-03: Architecture Management Tool

### Draft
*None currently*

### Superseded
*None currently*

---

## How to Find Full ADR Content

1. **AI Pack**: See `ai/packs/ADRS__recent.md` for consolidated 2025 ADRs
2. **Source Files**: Navigate to `src/asciidoc/modules/governance/pages/`
3. **Published Site**: Access the deployed playbook site

---

## How to Create a New ADR

1. Use the ADR template in `ai/packs/ROOT__04_templates_checklists_examples.md`
2. Create a new file in `src/asciidoc/modules/governance/pages/YYYY-reviews/`
3. Follow naming convention: `adr-YY-NN_short-title.adoc`
4. Add entry to `architecture-reviews.adoc`
5. Update `nav.adoc` to include the new ADR
6. Submit for review through the Architecture Review Forum
