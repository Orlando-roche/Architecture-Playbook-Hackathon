# Governance
> Sources: `src/asciidoc/modules/ROOT/pages/`, `src/asciidoc/modules/guidelines/pages/`
---

The introduction of the Architecture Catalyst role is a strategic decision to mitigate the risk of the Core Architecture group becoming a bottleneck and to drive value across the CS-CoE by establishing robust and trustworthy relationships.

![catalyst network](../images/catalyst_network.png)

Architecture Catalysts are individuals within the organization who act as a bridge between the Architecture Department and the broader organisation. The Architecture Catalysts collaborate with the Core Architecture Team and serve as advocates for architecture, helping to better support and engage with the CS-CoE and the REDs on navigate architectural challenges.

# Role Purpose and Characteristics

- Connecting Role: This role focuses on Connecting People, Strategy, and Technology.

- Comprehensive Understanding: Architecture Catalysts are individuals with a deep understanding of specific areas within the Research and Early Development (REDs)' digital landscape.

- Alignment: They ensure alignment between the wider organization and the Architecture Department.

- First Contact Point: They serve as the first point of contact for communication between their respective department and the Architecture team.

- Guardrail Adherence: They are responsible for ensuring that Architecture best practices and processes are followed.
---

Our operating model relies on defined architectural bodies to ensure coherent, consistent, and scalable architecture practices across the CS-CoE and the broader organization. These bodies provide the structure for review, alignment, and approval of significant design choices, collectively overseeing the architectural direction and governance.

# Core Architecture Team

![icon core architecture team](../images/icon_core_architecture_team.png)

The Architecture group is responsible for overseeing the architectural direction and governance within the Computational Sciences Center of Excellence (CS-CoE). The team ensures that architectural standards are maintained, best practices are followed, and that the architecture aligns with the overall business goals and strategies.

# Architecture Council

![icon architecture council](../images/icon_architecture_council.png)

The purpose of the Architecture Council is to connect the Core Architecture Team with the the broader CS-CoE organization and the REDs. Promote architectural alignment, increase awareness of architectural topics, and collaboratively address architectural challenges and develop and refine architectural strategies.

Members: Core Architecture Team and the Architecture Catalysts.

# Architecture Review Forum

![icon architecture review forum](../images/icon_architecture_review_forum.png)

The Architecture Review Forum reviews and approves architectural designs, decisions, and changes within the CS-CoE. The forum ensures consistent, high-quality architectural decisions by providing a structured platform to review, align and approve significant design choices across the REDs.

Decision are made by the Architecture Department, guided by the principles defined in the [Architecture Guardrails](guidelines:guardrails.xml). Architecture Catalysts and Subject Matter Experts participate as consultative members, providing insights and domain perspectives to inform decision-making. If no clear consensus is reached, the Head of Architecture serves as the final decision authority to ensure timely resolution and accountability. All outcomes are captured and published as [Architecture Decision Records (ADRs)](governance:architecture-reviews.xml).

Members: Core Team + Architecture Catalysts + on-demand SMEs.

# Architecture Workgroup

![icon architecture workgroup](../images/icon_architecture_workgroup.png)

Rapid, Cross-Functional Execution for Targeted Architecture Needs.

- Purpose-driven teams formed to deliver a specific architecture outcome.

- Cross-functional: including Architecture Catalysts and subject matter experts.

- Time-bound: exist for no longer than three months to ensure focus and agility.

- Outcome-focused: produce concrete deliverables such as blueprints, design proposals or standards.

- Each workgroup has a dedicated lead who ensures focus, progress and delivery.
---


# Reference Architecture
---

The CS-CoE Architecture Playbook is a collection of best practices, guidelines, and standards for designing and implementing software architectures within the Computational Sciences Center of Excellence at Roche. It serves as a reference for architects, developers, and other stakeholders involved in software development projects.
---


# Architecture Process
---

Our architectural practice is enabled by the dedicated Architecture group and extended throughout the organization by our Architecture Catalysts, ensuring that we maintain architectural coherence while embedding strategic alignment across all Research and Early Development domains.

# The Architecture Group

The core Architecture group is part of CSCoE-DDC organization and oversees the architectural direction and governance within the Computational Sciences Center of Excellence (CS-CoE).

![Architecture Catalyst](../images/team_core_architecture.png)

You can contact the members of the group by eMail: <CSCoE-DDC-EA-d@gene.com>

# Architecture Catalysts

The Catalysts serve as the first point of contact between their respective departments and the Architecture group, promoting architectural alignment and ensuring that best practices are followed. They are members of the Architecture Council and the Architecture Review Board.

![Architecture Catalyst](../images/team_architecture_catalyst.png)

# Contact

For general inquiries or to connect with the broader organization’s representatives, please reach out to the [Architecture Catalyst Council](mailto:CSCOE-ARCHITECTURE-CATALYST@msxdl.roche.com).
---

The Architecture Guardrails define the key boundaries and principles that guide the design, implementation, and evolution of solutions across the Computational Sciences Center of Excellence (CS-CoE). They ensure cohesion, interoperability, compliance, and sustainability across the REDs’ digital landscape while enabling innovation and agility.

<div class="important">

**<span class="red">This is section is in DRAFT state and Work In Progress.</span>** The content is subject to active discussion and may change.

If you have **feedback or want to contribute** you may join our [architecture slack channel](https://roche.enterprise.slack.com/archives/C097C8D6S0M) or send an email to our [Architecture Catalyst Council](mailto:CSCOE-ARCHITECTURE-CATALYST@msxdl.roche.com).

</div>

# Core Technology and Integration

- **API & Integration:** API-first design, registration and publishing via DISCUSS: ? [Gravitee](https://gravitee.roche.com/) API Gateway.

- DISCUSS: ?Event & Messaging: ?? Event Platform for asynchronous integration and data sharing

- **Identity & Access Management:** User facing applications leverage SSO provided by PingFederate.

- **Project Based Access Management (PBAC/PBAM):**

# Hosting

- Usage of Roche standard infrastructure offerings for on-premise and cloud ([Roche Cloud Platform (RCP)](https://sites.google.com/roche.com/cloudhosting/the-offering/our-portfolio))

- The preferred RCP cloud provider for the CSCoE is AWS.

# Governance & Compliance

- An **Architecture Review** must be done by all new or significantly modified systems which:

  1.  Have a substantial relevance and impact on the landscape (e.g. new registration systems, platforms)

  2.  Deviate from the reference as described in this document

- **Decision Transparency:** The Architecture team must document decisions in the Architecture Decision Records (ADRs)

- Computerized systems must perform a **Security and Risk Assessment** [IRM](https://iraam.roche.com/).

- Register your solution in [ACT](https://act.roche.com/) if you require the option to **test application compatibility** on client machines.

- New applications requiring **infrastructure from Global Informatics**, must be registered in [ITSM Service Now](https://sites.google.com/roche.com/snow-itsm-for-pred).

- Artifacts of **Business Information and Architecture** must be captured in the [Architecture Master Repository (AMR)](https://go.roche.com/amr).

- Adhere to **local compliance rules** for user-facing applications, e.g. in Germany the [works council approval](https://roche.service-now.com/people_and_culture?id=kb_article&sysparm_article=KB0081364) is required before making a new tool available to employees.

# Data, Security & Privacy

- **Data Classification:** Define and protect data according to Roche privacy and data-handling policies.

- Application defines and uses a **terminology** which is accessible (recommended terminology server is [RTS](https://go.roche.com/rts))

- [FAIR](https://go.roche.com/FAIRArchitecturePlaybook) principles are applied.

- **Audit & Monitoring:** Systems must support auditability and operational visibility.

# Delivery, Lifecycle & Innovation

- DISCUSS: ? **Documentation:** All architecture artifacts must be documented using OneDoc?

- **Innovation:** Pilot innovative new solutions in controlled sandbox environments before scaling.
---

These principles guide our ambitions for how we intend to design, build, scale, and evolve the system landscape across the Computational Sciences Center of Excellence (CS CoE). They reflect our shared architectural commitments and guide the direction we collectively agree to pursue; deviations should be reviewed through the exception process to ensure consistency and good decision-making.

Each principle includes a Description (what we commit to), a Why (the underlying rationale), and an Impact (the outcomes we expect when we apply it effectively).

# Principle: Start with Business Impact – Deliver, Measure, and Scale What Works

## Description

We begin by aligning our deliverables to the business objectives defined by the REDs. We deliver iteratively, incorporating continuous customer feedback, and validate our outcomes against the business’s success criteria, scaling only what creates proven value.

## Why

Impact-driven, evidence-based delivery ensures we focus our time and investment on what truly matters. Our patients are waiting.

## Impact

- Clear success criteria for every initiative

- Strong alignment with business goals and needs

- Quicker validation of ideas, reducing risk and evolving with evidence

- Scaling is driven by evidence rather than assumption

# Principle: Design for Reuse – Modular and Integration-Ready by Design

## Description

We prioritize reuse by evaluating existing solutions, starting with open-source products, then commercial off-the-shelf solutions, and only considering building from scratch as a last resort, while articulating the architectural rationale when reuse is not viable. Evolving towards modular, loosely coupled, and interoperable components that can be reused and composed ensures accelerated delivery across domains.

## Why

Reusability mindset reduces duplication and improves ROI, while modular design enables agility, interoperability, and long-term scalability.

## Impact

- Faster delivery with the flexibility to adjust and iterate as needs evolve.

- Reduction of duplicated systems and fragmented tooling - more harmonized landscape.

- Independent evolution of services, enabling easier deprecation and consolidation

- Greater consistency and architectural coherence data across teams and domains

# Principle: Innovate at the Core

## Description

We strive for applying cloud where it makes sense, i.e. cloud-first, cloud-native, SaaS-first, AI-enabled, API-driven architecture that enables rapid innovation and scalability. \* **Cloud-first** means we prioritize the cloud, but are not cloud-only. \* **Cloud-native** means we leverage cloud-providers specific capabilities as an accelerator, rather than being cloud agnostic. \* **AI-ready** means we increasingly embed AI into how we design, build, operate and govern our systems, while also ensuring our systems are AI-ready.

<div class="note">

While our current state does not yet fully achieve this principle, this is the direction we are intentionally moving towards.

</div>

## Why

Enable rapid innovation and integrated ecosystems, and create a seamless environment where machine learning and artificial intelligence technologies can thrive.

## Impact

- Drives rapid innovation

- More rapid delivery through managed services and SaaS adoption

- Seamless integration via APIs and open standards

- Designed for AI from the beginning

# Principle: Automate for Scale with Embedded Observability

## Description

We automate repeatable, manual, labor intensive work across infrastructure, applications, data, and processes to scale reliably. We design systems with built-in observability, which includes usage monitoring of applications, so we can continuously debug, understand, and improve them. Our scientific stakeholders rely on our solutions and data, making it essential to build and maintain their trust - critical for the ultimate outcome: delivering medicines faster to patients.

## Why

Automation enables scale without proportional effort and reduces operational risk. Observability ensures we can detect, diagnose, and improve continuously.

## Impact

- Faster detection and resolution of issues

- Supports rapid scaling without proportional increases in effort or resources.

- Enables consistent, repeatable processes that can be measured and optimized.

- More time and focus for innovation

# Principle: Collaborate to Elevate

## Description

We collaborate, communicate transparently and share knowledge, designs, code, and decisions to achieve collective outcomes and foster trust. We will work in the open (e.g. documented designs and code, documented decisions, peer reviews) and ensure artifacts are searchable. This is critical as we create the CS CoE organization, and we bring together different cultures, geographies, ways of working, approaches, and strengths.

## Why

Open collaboration accelerates innovation and builds alignment across diverse teams and disciplines.

## Impact

- Strengthens relationships, build credibility and trust - crucial for gaining consensus

- Promotes exchange of ideas, data, and components

- Accelerates decision-making process across the organization through transparency

- A learning culture that attracts and retains talent

# Principle: Secure & Compliant by Default

## Description

We embed security, privacy, and compliance into every design — not as an afterthought - in alignment with Roche corporate guidelines. This includes patient data, licensed/purchased data with contractual restrictions, and data subject to geographic or jurisdictional regulations. At the same time, we design access models that enable appropriate, governed sharing.

## Why

Protecting our intellectual property and data is essential for sustainable innovation, faster delivery, and regulatory compliance.

## Impact

- Reduces risk of data loss, non-compliance, and rework through early, built-in controls

- Increases transparency and strengthens confidence in audit readiness

- Accelerates delivery by automating security and governance

- Enables seamless collaboration and data sharing across domains

# Principle: Design for Resilience and Adaptability

## Description

We architect solutions with modularity and flexibility, embedding fault tolerance as a core design tenant. In research and early development, our business priorities shift rapidly, data modalities evolve, and workflows and technologies are constantly changing and improving. Our systems must keep pace with this and scale, pivot, or recover without major redesign.

## Why

In gRED and pRED, business priorities, technologies, and regulatory landscapes continuously evolve. Systems that cannot adapt quickly or recover gracefully from disruptions slow down innovation, productivity and increase operational risk.

## Impact

- Lower cost for adapting to rapid changes to business processes

- Higher uptime and resilience during scientific experiment cycles that cannot be disrupted or delayed

- Reduce downtime, minimizes cost of change

- Ensures technology investments remain relevant and dependable even under constant evolution

# Principle: FAIR Data By Design

## Description

We ensure all systems, applications, pipelines, and processes are designed to enable Findable, Accessible, Interoperable, and Reusable (FAIR) data from creation through consumption. Data is core to everything we do in the CS CoE.

## Why

FAIR data accelerates discovery, enables reproducibility, and can power AI. It ensures that data can be trusted, reused, and integrated seamlessly across the ecosystem.

## Impact

- Data is easily discoverable through searchable metadata

- Access is secure, automated, traceable with the right governance structure

- Enable cross-domain interoperability

- Improve reproducibility and accelerate AI development
---


# Identity and Access Management
---
