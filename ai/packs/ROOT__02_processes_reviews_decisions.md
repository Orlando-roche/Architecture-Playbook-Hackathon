# ROOT Pack 02: Processes, Reviews, and Decisions

> Source: `src/asciidoc/modules/ROOT/pages/` (process.adoc, bodies.adoc) and `src/asciidoc/modules/governance/`

---

## Architecture Review Process

### When is an Architecture Review Required?

An Architecture Review must be done by all new or significantly modified systems which:

1. Have a substantial relevance and impact on the landscape (e.g., new registration systems, platforms)
2. Deviate from the reference architecture as described in the guardrails

### Review Forum Structure

The Architecture Review Forum reviews and approves architectural designs, decisions, and changes within the CS-CoE.

**Participants**:
- Core Architecture Team (decision makers)
- Architecture Catalysts (consultative)
- Subject Matter Experts (on-demand, consultative)

### Decision-Making Process

1. **Proposal Submission**: Teams submit their architecture proposal for review
2. **Review Session**: The Architecture Review Forum evaluates the proposal
3. **Decision**: Made by the Architecture Department, guided by the Architecture Guardrails
4. **Escalation**: If no clear consensus is reached, the Head of Architecture serves as the final decision authority
5. **Documentation**: All outcomes are captured and published as Architecture Decision Records (ADRs)

---

## Architecture Decision Records (ADRs)

ADRs document significant architectural decisions made through the review process.

### ADR Structure

Each ADR follows a standard template:

| Field | Description |
|-------|-------------|
| Status | Draft, Accepted, Superseded |
| Impact | Low, Medium, High |
| Demand Owner | Person requesting the decision |
| ADR Contributors | People who contributed to the decision |
| Informed | Stakeholders who were informed |
| Publication Date | When the ADR was published |

### ADR Sections

1. **Background**: Context and history leading to the decision
2. **Context**: Current situation and constraints
3. **Consequences**: Implications of the decision (pros/cons)
4. **Outcome / Decision**: The actual decision and rationale
5. **Resources**: Links to supporting documentation

### Recent ADRs (2025)

| ADR | Title | Date | Status |
|-----|-------|------|--------|
| ADR-25-03 | Architecture Management Tool | November 11, 2025 | Accepted |
| ADR-25-02 | Orchestration Tool | October 29, 2025 | Accepted |
| ADR-25-01 | Animal Registry System for gARI | August 31, 2025 | Accepted |

---

## Governance Bodies and Their Roles in Decisions

### Architecture Council
- Promotes architectural alignment
- Increases awareness of architectural topics
- Collaboratively addresses architectural challenges
- Develops and refines architectural strategies

### Architecture Review Forum
- Reviews and approves architectural designs
- Ensures consistent, high-quality decisions
- Provides structured platform for review and approval

### Architecture Workgroup
- Time-bound (max 3 months)
- Delivers specific architecture outcomes
- Produces blueprints, design proposals, or standards

---

## Decision Transparency

The Architecture team must document decisions in the Architecture Decision Records (ADRs). This ensures:

- Traceability of architectural decisions
- Historical context for future reference
- Transparency across the organization
- Learning from past decisions
