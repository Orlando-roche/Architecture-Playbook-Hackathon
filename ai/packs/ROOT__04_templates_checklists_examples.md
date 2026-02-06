# ROOT Pack 04: Templates, Checklists, and Examples

> Source: `src/asciidoc/modules/governance/` and `src/asciidoc/modules/ROOT/`

---

## ADR Template

Use this template when documenting Architecture Decision Records.

### Header Table

```
| Field | Value |
|-------|-------|
| Status | Draft / Accepted / Superseded |
| Impact | Low / Medium / High |
| Demand Owner | [Name] |
| ADR Contributors | [Names] |
| Informed | [Names] |
| Publication Date | [Date] |
```

### Sections

#### Background
Provide context and history leading to this decision. What events or needs triggered this review?

#### Context
Describe the current situation, constraints, and factors influencing the decision.

#### Consequences
List the implications of the decision:
- **Pros**: Benefits and positive outcomes
- **Cons**: Drawbacks and risks
- **Neglected Options**: Alternatives that were considered but not chosen, and why

#### Outcome / Decision
State the decision clearly. Include:
- The chosen approach
- Rationale for the choice
- Any conditions or constraints
- Follow-up actions if applicable

#### Resources
Link to supporting documentation, presentations, or external references.

---

## Architecture Review Checklist

Use this checklist when preparing for an architecture review.

### Before the Review

- [ ] Document the proposed architecture
- [ ] Identify alignment with Architecture Guiding Principles
- [ ] Check compliance with Architecture Guardrails
- [ ] Identify any deviations from reference architecture
- [ ] Prepare justification for any exceptions needed
- [ ] Identify stakeholders to inform
- [ ] Schedule review with Architecture Review Forum

### During the Review

- [ ] Present the business context and objectives
- [ ] Walk through the proposed architecture
- [ ] Address questions from reviewers
- [ ] Document feedback and concerns raised
- [ ] Agree on decision or next steps

### After the Review

- [ ] Document the decision in an ADR
- [ ] Communicate outcome to stakeholders
- [ ] Implement any required changes
- [ ] Update relevant documentation

---

## Page Template for Playbook Content

Every new page in the playbook must follow this structure:

```asciidoc
:moduledir: ..
include::{moduledir}/../ROOT/partials/_commons.adoc[]

= Page Title
:page-content-owner-email: your.email@roche.com

Your content here...
```

For nested pages (e.g., in `2025-reviews/`), adjust the `moduledir` path:

```asciidoc
:moduledir: ../..
```

---

## Cross-Reference Examples

### Same Module
```asciidoc
xref:page-name.adoc[]
```

### Other Module
```asciidoc
xref:module_name:page-name.adoc[]
```

### With Custom Text
```asciidoc
xref:knowledge_base:jetbrains-licenses.adoc[JetBrains Licenses]
```

---

## Example ADR: Orchestration Tool (ADR-25-02)

This is a condensed example of a well-structured ADR.

**Status**: Accepted  
**Impact**: Low  
**Demand Owner**: Imran Khan  
**Publication Date**: October 29, 2025

### Background
The CoE organization lacked a standardized, modern orchestration platform for data pipelines and MLOps orchestration. Parts of the legacy gCS organization had been leveraging open-source Dagster (OSS) in production with success.

### Context
The decision to purchase Dagster+ was made in the legacy gCS organization. With the creation of the CS-CoE organization in July 2025, this ADR documents the rationale, scope, and strategy.

### Decision
Complete the purchase of the 1-year Dagster+ license. This decision:
- Does not establish Dagster+ as the data pipeline orchestration standard for the CoE
- Does not imply Dagster+ will be the standard for MLOps in CoE
- Provides a seed-and-grow pilot strategy

### Rationale
Dagster was selected because it provides:
- Developer experience – asset-based approach, intuitive UI
- Momentum and adoption – success in production, growing industry adoption
- Integration with key frameworks – dbt, OpenLineage, W&B
- Observability – strong monitoring UI
- Iteration speed – supports partial runs and resuming from failures

### Follow-up
A formal checkpoint will occur in Q1 2026 to review progress against evaluation criteria.

---

## Contribution Workflow Example

### 1. Create a Branch
```bash
git checkout main
git pull origin main
git checkout -b add-kubernetes-guidelines
```

### 2. Make Changes
- Add or edit `.adoc` files in the appropriate module
- Follow the page template structure
- Update `nav.adoc` if adding new pages

### 3. Commit and Push
```bash
git add .
git commit -m "Add Kubernetes deployment guidelines"
git push origin add-kubernetes-guidelines
```

### 4. Open a Merge Request
- Go to the repository merge requests page
- Select your branch as source, `main` as target
- Add reviewers from the Core Architecture team
- Submit the merge request

### 5. Review Environment
After pushing, a review environment is automatically created. Access it via:
**Operate → Environments → review/your-branch-name → Open**
