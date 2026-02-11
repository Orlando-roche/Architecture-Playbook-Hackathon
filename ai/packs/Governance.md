# Governance

> Sources: `src/asciidoc/modules/ROOT/pages/`, `src/asciidoc/modules/guidelines/pages/`

---

## CS-CoE Architecture Playbook

The CS-CoE Architecture Playbook is a collection of best practices, guidelines, and standards for designing and implementing software architectures within the Computational Sciences Center of Excellence at Roche. It serves as a reference for architects, developers, and other stakeholders involved in software development projects.

---

## Architecture Community

Our architectural practice is enabled by the dedicated Architecture group and extended throughout the organization by our Architecture Catalysts, ensuring that we maintain architectural coherence while embedding strategic alignment across all Research and Early Development domains.

### The Architecture Group

The core Architecture group is part of CSCoE-DDC organization and oversees the architectural direction and governance within the Computational Sciences Center of Excellence (CS-CoE).

**Contact**: CSCoE-DDC-EA-d@gene.com

### Architecture Catalysts

The Catalysts serve as the first point of contact between their respective departments and the Architecture group, promoting architectural alignment and ensuring that best practices are followed. They are members of the Architecture Council and the Architecture Review Board.

**Contact**: CSCOE-ARCHITECTURE-CATALYST@msxdl.roche.com

---

## Architecture Bodies

Our operating model relies on defined architectural bodies to ensure coherent, consistent, and scalable architecture practices across the CS-CoE and the broader organization.

### Core Architecture Team

The Architecture group is responsible for overseeing the architectural direction and governance within the Computational Sciences Center of Excellence (CS-CoE). The team ensures that architectural standards are maintained, best practices are followed, and that the architecture aligns with the overall business goals and strategies.

### Architecture Council

**Purpose**: Connect the Core Architecture Team with the broader CS-CoE organization and the REDs. Promote architectural alignment, increase awareness of architectural topics, and collaboratively address architectural challenges and develop and refine architectural strategies.

**Members**: Core Architecture Team and the Architecture Catalysts.

### Architecture Review Forum

**Purpose**: Reviews and approves architectural designs, decisions, and changes within the CS-CoE. The forum ensures consistent, high-quality architectural decisions by providing a structured platform to review, align and approve significant design choices across the REDs.

**Decision Process**:
- Decisions are made by the Architecture Department, guided by the Architecture Guardrails
- Architecture Catalysts and Subject Matter Experts participate as consultative members
- If no clear consensus is reached, the Head of Architecture serves as the final decision authority
- All outcomes are captured and published as Architecture Decision Records (ADRs)

**Members**: Core Team + Architecture Catalysts + on-demand SMEs.

### Architecture Workgroup

Rapid, Cross-Functional Execution for Targeted Architecture Needs.

- Purpose-driven teams formed to deliver a specific architecture outcome
- Cross-functional: including Architecture Catalysts and subject matter experts
- Time-bound: exist for no longer than three months to ensure focus and agility
- Outcome-focused: produce concrete deliverables such as blueprints, design proposals or standards
- Each workgroup has a dedicated lead who ensures focus, progress and delivery

---

## Architecture Catalyst Role

The introduction of the Architecture Catalyst role is a strategic decision to mitigate the risk of the Core Architecture group becoming a bottleneck and to drive value across the CS-CoE by establishing robust and trustworthy relationships.

Architecture Catalysts are individuals within the organization who act as a bridge between the Architecture Department and the broader organisation. They collaborate with the Core Architecture Team and serve as advocates for architecture.

### Role Purpose and Characteristics

- **Connecting Role**: Focuses on Connecting People, Strategy, and Technology
- **Comprehensive Understanding**: Deep understanding of specific areas within the REDs' digital landscape
- **Alignment**: Ensure alignment between the wider organization and the Architecture Department
- **First Contact Point**: First point of contact for communication between their department and the Architecture team
- **Guardrail Adherence**: Responsible for ensuring that Architecture best practices and processes are followed

---

## Architecture Guiding Principles

These principles guide how we design, build, scale, and evolve the system landscape across the CS-CoE. Deviations should be reviewed through the exception process.

### Principle 1: Start with Business Impact

Align deliverables to business objectives. Deliver iteratively with continuous feedback. Scale only what creates proven value.

**Impact**: Clear success criteria, strong alignment with business goals, quicker validation of ideas.

### Principle 2: Design for Reuse

Prioritize reuse: open-source first, then COTS, build as last resort. Evolve towards modular, loosely coupled, interoperable components.

**Impact**: Faster delivery, reduced duplication, independent evolution of services.

### Principle 3: Innovate at the Core

Cloud-first, cloud-native, SaaS-first, AI-enabled, API-driven architecture.

- **Cloud-first**: Prioritize cloud, but not cloud-only
- **Cloud-native**: Leverage cloud-provider capabilities as accelerator
- **AI-ready**: Embed AI into design, build, operate, and govern

**Impact**: Rapid innovation, seamless integration via APIs, designed for AI.

### Principle 4: Automate for Scale with Embedded Observability

Automate repeatable work. Design systems with built-in observability and usage monitoring.

**Impact**: Faster issue resolution, rapid scaling, more time for innovation.

### Principle 5: Collaborate to Elevate

Collaborate transparently. Share knowledge, designs, code, and decisions. Work in the open.

**Impact**: Stronger relationships, accelerated decision-making, learning culture.

### Principle 6: Secure & Compliant by Default

Embed security, privacy, and compliance into every design. Protect patient data and IP.

**Impact**: Reduced risk, audit readiness, accelerated delivery.

### Principle 7: Design for Resilience and Adaptability

Architect with modularity and flexibility. Embed fault tolerance. Systems must scale, pivot, or recover without major redesign.

**Impact**: Lower cost of change, higher uptime, relevant technology investments.

### Principle 8: FAIR Data By Design

Design systems to enable Findable, Accessible, Interoperable, and Reusable (FAIR) data.

**Impact**: Discoverable data, cross-domain interoperability, reproducibility, AI-ready.

---

## Architecture Guardrails

The Architecture Guardrails define key boundaries and principles that guide design, implementation, and evolution of solutions across the CS-CoE.

> **Note**: This section is in DRAFT state and subject to change.

### Core Technology and Integration

- **API & Integration**: API-first design, register and publish via Gravitee API Gateway
- **Identity & Access Management**: User-facing applications use SSO via PingFederate
- **Project Based Access Management (PBAC/PBAM)**: Follow PBAC patterns

### Hosting

- Use Roche standard infrastructure (Roche Cloud Platform - RCP)
- **Preferred cloud provider**: AWS

### Governance & Compliance

- **Architecture Review required** for:
  - New or significantly modified systems with landscape impact
  - Systems that deviate from reference architecture
- **Decision Transparency**: Document decisions in ADRs
- **Security and Risk Assessment**: Complete IRM assessment
- **Application Registration**: Register in ACT for compatibility testing
- **Infrastructure**: Register in ITSM ServiceNow for GIS infrastructure
- **Architecture Artifacts**: Capture in Architecture Master Repository (AMR)
- **Local Compliance**: Follow local rules (e.g., German works council approval)

### Data, Security & Privacy

- **Data Classification**: Protect data per Roche policies
- **Terminology**: Use accessible terminology (recommended: RTS)
- **FAIR Principles**: Apply FAIR principles
- **Audit & Monitoring**: Support auditability and operational visibility

### Delivery, Lifecycle & Innovation

- **Documentation**: Document architecture artifacts
- **Innovation**: Pilot in sandbox environments before scaling

---

## Contact Information

| Contact | Email |
|---------|-------|
| Architecture Team | CSCoE-DDC-EA-d@gene.com |
| Architecture Catalyst Council | CSCOE-ARCHITECTURE-CATALYST@msxdl.roche.com |
| Slack | #cs-coe-ddc-architecture |
