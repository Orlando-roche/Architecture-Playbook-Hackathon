# Guidelines Pack: Guardrails and Standards

> Source: `src/asciidoc/modules/guidelines/pages/` (guardrails.adoc, guidelines.adoc, iam.adoc)

---

## Architecture Guardrails

The Architecture Guardrails define the key boundaries and principles that guide the design, implementation, and evolution of solutions across the Computational Sciences Center of Excellence (CS-CoE).

They ensure cohesion, interoperability, compliance, and sustainability across the REDs' digital landscape while enabling innovation and agility.

> **Note**: This section is in DRAFT state and Work In Progress. The content is subject to active discussion and may change.

---

## Core Technology and Integration

### API & Integration
- **API-first design** is required
- APIs must be registered and published via Gravitee API Gateway

### Identity & Access Management
- User-facing applications must leverage SSO provided by **PingFederate**
- Project Based Access Management (PBAC/PBAM) patterns should be followed

---

## Hosting

### Infrastructure Requirements
- Use Roche standard infrastructure offerings for on-premise and cloud
- Cloud hosting via **Roche Cloud Platform (RCP)**
- **AWS is the preferred cloud provider** for the CSCoE

---

## Governance & Compliance

### Architecture Review Requirements
An Architecture Review must be done by all new or significantly modified systems which:
1. Have a substantial relevance and impact on the landscape (e.g., new registration systems, platforms)
2. Deviate from the reference as described in this document

### Decision Transparency
- The Architecture team must document decisions in Architecture Decision Records (ADRs)

### Security and Risk Assessment
- Computerized systems must perform a Security and Risk Assessment via IRM (iraam.roche.com)

### Application Registration
- Register your solution in **ACT** if you require the option to test application compatibility on client machines
- New applications requiring infrastructure from Global Informatics must be registered in **ITSM Service Now**

### Business Information and Architecture
- Artifacts of Business Information and Architecture must be captured in the **Architecture Master Repository (AMR)**

### Local Compliance
- Adhere to local compliance rules for user-facing applications
- Example: In Germany, works council approval is required before making a new tool available to employees

---

## Data, Security & Privacy

### Data Classification
- Define and protect data according to Roche privacy and data-handling policies

### Terminology
- Applications should define and use a terminology which is accessible
- Recommended terminology server: **RTS** (Roche Terminology Server)

### FAIR Principles
- FAIR (Findable, Accessible, Interoperable, Reusable) principles must be applied

### Audit & Monitoring
- Systems must support auditability and operational visibility

---

## Delivery, Lifecycle & Innovation

### Documentation
- All architecture artifacts should be documented (OneDoc recommended)

### Innovation
- Pilot innovative new solutions in controlled sandbox environments before scaling

---

## Identity and Access Management (IAM)

### Authentication
- Use Roche SSO via PingFederate for user authentication
- OAuth 2.0 / OpenID Connect protocols are standard

### Authorization APIs

| API | Purpose | Platform |
|-----|---------|----------|
| RedPanda API | Project data access management | Gravitee |
| pREDiLogin API | AD group membership checking | Gravitee |
| IAM Proxy API | Combined RedPanda + pREDiLogin + OIDC | Gravitee |
| CIDM Group Management API | Group management and membership | Mulesoft |

### Auto-filled AD Groups

The following AD groups are automatically populated and can be used for access management:

| Group | Description |
|-------|-------------|
| GLOpAppAuth_pRED_All | All pRED users |
| GLOpAppAuth_pRED_Internals_All | All internal pRED users |
| GLOpAppAuth_pRED_Contractors_All | All external pRED users |
| GLOpAppAuth_CSCoE_All | All CS-CoE users |
| GLOpAppAuth_CSCoE_EMEA_All | CS-CoE users in EMEA |
| GLOpAppAuth_CSCoE_NALA_All | CS-CoE users in North America |
| GLOpAppAuth_CSCoE_ASIA_All | CS-CoE users in Asia |
| GLOpAppAuth_gRED_All | All gRED users |
| GLOpAppAuth_CICoR_All | All CICoR users |

---

## Quick Reference: What You Must Do

| Requirement | Action |
|-------------|--------|
| New system with landscape impact | Request Architecture Review |
| Deviation from reference architecture | Request Architecture Review |
| User-facing application | Use PingFederate SSO |
| API development | Register in Gravitee |
| Cloud hosting | Use RCP (prefer AWS) |
| New application | Register in ACT and ITSM |
| Computerized system | Complete IRM security assessment |
| Architecture artifacts | Document in AMR |
| Germany deployment | Obtain works council approval |

---

## Feedback and Contribution

If you have feedback or want to contribute to the guardrails:
- Join the architecture Slack channel: #cs-coe-ddc-architecture
- Email the Architecture Catalyst Council: CSCOE-ARCHITECTURE-CATALYST@msxdl.roche.com
