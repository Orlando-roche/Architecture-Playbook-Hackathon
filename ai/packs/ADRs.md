# Architecture Decision Records (ADRs)
> Source: `src/asciidoc/modules/governance/pages/2025-reviews/`
---

|                      |                                                                                                 |
|----------------------|-------------------------------------------------------------------------------------------------|
| **Status**           | Accepted                                                                                        |
| **Impact**           | Medium                                                                                          |
| **Demand Owner**     | Asif Jan                                                                                        |
| **ADR Contributors** | Anish Kejariwal, Alex Weigel                                                                    |
| **Informed**         | Ryan Copping, Anna Craig, Imran Khan, Hugo Lam, Olivier Roche, Mark McCreary, Clarisse Chavanne |
| **Publication Date** | August 31, 2025                                                                                 |

# 📗 Background

gARI (gRED Animal Resources Informatics) is a gRED vivarium management system platform. A high priority request was made in May 2025 to the gRED Lab to Insights (new Lab Workflow & Data Domain) and to gRED Data Ecosystems (DE) initiative to provide an animal registry system to gARI. To select an animal registry system for gARI, both the Data Ecosystem registry, and FISH were evaluated:

- Data Ecosystems has a capability team focused on building an entity registry system to address the fragmentation and inconsistency of biological entity registration in gRED.

- FISH ARS (FAIR In-vivo data SHaring - Animal Registration System) is a component of the pRED in-vivo data landscape. FISH ARS provides globally unique, persistent and resolvable identifiers (GUPRI) for pRED animals

Despite the critical role of biological entity registration, the overall landscape across the REDs is characterized by separate, ad hoc systems and spreadsheets. WS7 Biological Entity Registration (BER) plans to be kicked off in Q3 2025, and the goal is to deliver a foundational capability for managing biological research master data across REDs. It aims to unify the disparate registry systems across the REDs, like FISH ARS and others, into a single, cohesive platform.

# ℹ️ Context

On July 23, 2025 gRED communicated the decision to use the Data Ecosystem Registry as the solution for gARI, and said the decision reflected long-term alignment with BER. It was decided not to use FISH ARS as the Animal Registry solution for gARI.

# 🌈 Consequences

People assumed that the DE Registry will be the future recommended solution by BER. The rationale for the decision was not transparent to pRED colleagues.

# 🤝 Outcome / Decision

At the time of writing, BER has not yet formally evaluated the existing solutions in the landscape (scheduled as a milestone for 2025). No formal recommendations have been worked on or made publicly available. In effect, the usage of the Data Ecosystem Registry for gARI should be considered as a tactical gRED solution which will be revisited once the BER recommendations have been published.

## Actions

1.  RDE WS7 BER project:

    1.  RTS currently maintains two animal data models: a FISH model and a gARI model. The FISH animal model is broader compared to the gARI model, and the two models are also structured very differently. The RTS team should consolidate these into a single animal data model to eliminate redundancy.

    2.  The CS-CoE Enterprise Architecture team and Data team must be consulted by BER before any final decisions are made to ensure transparency and landscape fit. This requirement is already built into the planning for how the BER team will be established.

2.  CS-CoE decision making, and the CoE EA (Enterprise Architecture):

    1.  The new CS-CoE should clarify governance and decision making processes, particularly for the CoE portfolio and RDE WS7 initiatives, with an emphasis on aligning with CoE priorities and architecture.

    2.  Architecture decisions which have a broader impact on the landscape of the REDs should have representation from the CS-CoE EA team.

    3.  The CoE EA team should provide a proposal outlining how it will operate within the CoE, including how it will provide Architecture Governance.

# 📚 Resources

- [Data Ecosystem Program](https://docs.google.com/presentation/d/1UiG3wU5FJyHGVExJpI3VnjONAiboR_mJPj0lodDXb5c/edit?slide=id.g34b8b764b26_0_301#slide=id.g34b8b764b26_0_301)

- [DE - UTL - Governance Decision Record - gARI](https://docs.google.com/document/d/1WUkNj6GGzt_knJr7RCNtoGTUzE9GnYiGuiekZTTQ5yE/edit?tab=t.0#heading=h.dkd442z3obrs)

- [FISH FAIR In-vivo data Sharing](https://sites.google.com/roche.com/fish-project/)

- [FISH - Animal Registration System Documentation](https://fish.pages.roche.com/documentation/onedoc/fish/115-Business-User-Guide/120-ARS/100-ARS.html)

- [pRED Architecture Playbook](https://pred-arch.pages.roche.com/playbook/pred-arch-playbook/)

- [Roche FAIR playbook](https://sites.google.com/roche.com/sweg/fair-implementation-tools/roche-fair-playbook)
---

|                      |                                                                                                                                                                      |
|----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Status**           | Accepted                                                                                                                                                             |
| **Impact**           | Low                                                                                                                                                                  |
| **Demand Owner**     | Imran Khan                                                                                                                                                           |
| **ADR Contributors** | Anish Kejariwal                                                                                                                                                      |
| **Informed**         | Aaron Archer Waterman, Alex Weigel, Gautam Singh, Henri Dwyer, Hugo Lam, Merima Birkhimer, Mark McCreary, Muller Mu, Ramachandran Prasad, Vitek Trela, Yogesh Pandit |
| **Publication Date** | October 29, 2025                                                                                                                                                     |

# 📗 Background

Today, in the CoE organization we lack a standardized, modern orchestration platform for data pipelines and MLOps orchestration. This gap creates fragmented approaches, higher operational overhead, and slower delivery to our stakeholders. Since 2024, parts of the legacy gCS organization has been leveraging open-source Dagster (OSS) in production with success:

- AI4DD (formerly MLDD): first adopters of Dagster

- gRED MLOps: as part of [initiative approval](https://docs.google.com/presentation/d/13xCvv1f4aFDb9realp3XFAnH47oQaAfjAzG9MjuWLcg/edit?slide=id.g2cf6639785e_1_6#slide=id.g2cf6639785e_1_6) with gCS LT in 2024, Dagster was selected over Kubeflow.

Additionally, the SADR product team (in legacy gCS) ran a [side-by-side](https://docs.google.com/presentation/d/1ETfOmb6OuFJ6WR4lumYCu0SwN0qyVf4kLP2TokAwwFw/edit?slide=id.g328d4427f20_0_0#slide=id.g328d4427f20_0_0) comparison of Airflow with Dagster for data pipelines and recommended Dagster, further advising that Dagster+ (enterprise version) should be used to scale more widely in the organization.

Based on these experiences, the gRED Data Ecosystem leadership decided in April 2025 to fund a 1-year Dagster+ license with a limited number of seats (15) as a seed-and-grow strategy to determine if this could be a preferred orchestration tool for gCS. This will cost ~\$150k (inclusive of 12 seats, with additional seats available at \$1200/seat pro-rated, and 3 admin seats at \$800/seat). Procurement is expected to complete in early September.

# ℹ️ Context

The decision to purchase Dagster+ was made in the legacy gCS organization as part of the gRED Data Ecosystem initiative. With the creation of the CS-CoE organization in July 2025, this ADR documents the rationale, scope, and strategy for Dagster+, and piloting it as a potential candidate for a CoE wide orchestration platform.

# 🤝 Outcome / Decision

We will complete the purchase of the 1-year Dagster+ license, which will still be funded by the 2025 gRED Data Ecosystem budget. This decision:

- Does not establish Dagster+ as the data pipeline orchestration standard for the CoE, or the gRED Data Ecosystem

- Does not imply Dagster+ will be the standard for MLOps in CoE (note: pRED MLOps currently uses Kubeflow)

By starting with a limited number of Dagster+ seats, this provides us with a seed-and-grow pilot strategy that aims to deliver value to current Dagster users in the organization and further evaluate Dagster+ for broader CoE adoption and as a potential standard.

## Rationale

Dagster was selected by legacy gCS because it provides a unified platform for data and ML pipelines, and demonstrated key advantages compared to alternatives

- Developer experience – asset-based approach, intuitive UI, and graphical representation of pipelines make it easy for developers to get started, and an opportunity for scientists to build data pipelines.

- Momentum and adoption: success in production in gCS, and rapidly growing industry adoption and [active open-source development](https://github.com/dagster-io/dagster/graphs/contributors), particularly in comparison to [Kubeflow](https://github.com/kubeflow/kubeflow/graphs/contributors) ([registry](https://github.com/kubeflow/model-registry/graphs/contributors?from=8%2F2%2F2025), [trainer](https://github.com/kubeflow/trainer/graphs/contributors), [kserve](https://github.com/kserve/kserve/graphs/contributors), [pipelines](https://github.com/kubeflow/pipelines/graphs/contributors)) in 2024 (Note: momentum should be re-evaluated as Kubeflow may have gained new momentum in 2025, as it is recently part of the [CNCF](https://www.cncf.io/blog/2025/07/18/a-mid-year-2025-look-at-cncf-linux-foundation-and-the-top-30-open-source-projects/)).

- Integration with key frameworks – native integration with dbt and OpenLineage for data engineering, and W&B for MLOps.

- Observability – strong monitoring UI making it easy to spot and debug errors in complex workflows

- Iteration speed – supports partial runs and resuming from failures, accelerating development cycles

Additional information can be found in the Resources section.

## Alternatives Considered

- Kubeflow: Successfully in production in legacy D&A, but it comes with a more complex API for pipeline definitions, which might be a hurdle for adoption on the gRED-side - knowing the lack of relevant experience and capabilities in the North-America based teams. Note: the pRED-MLOps team has been successful in abstracting this complexity in the Kubeflow Pipeline API largely away - by providing user- and self-service-friendly MLOps-SDK, reusable Kubeflow Pipeline components, and Bring Your Own Container (BYOC) approach. Kubeflow pipeline for both data pipelines and ML pipelines.

- Apache Airflow: Used in legacy D&A and legacy gCS. Limitations in dbtCore integration, and weaker observability, traceability, and lineage compared to Dagster.

- SageMaker Pipelines: Previously used in legacy gCS, but experienced very low, and slow pipeline deployment.

Since the evaluation was originally done, there are additional options to be considered for evaluation:

- Nextflow: In active use with gRED FDFM (Foundational Data for Foundational Models), and omics workflows

- Argo Workflows: Successfully used in the Spring Sciences platform, and is the default executor in the pRED-MLOps’ Kubeflow Pipelines. Note: the Dagster vendor (inherently biased) said they have seen customers migrate from Argo to Dagster, since Argo is infra-centric and best “for DevOps engineers but becomes a bottleneck for data engineers, analytics engineers, or ML practitioners who want Pythonic, declarative workflows and local testing”.

# 🌈 Consequences

## Pros:

- Provide immediate value to existing Dagster users (e.g. AI4DD) through Dagster+ specific (e.g. branch deployments, launcher role) functionality they have requested

- Demonstrate whether Dagster+ RBAC functionality will enable scaling Dagster to a wider set of users, and for use cases where auditing is required

- Build evidence to support a CoE-wide decision on the value of Dagster, and a decision on whether to have a unified orchestration platform versus when to have use-case, data domain specific platforms

- Validate Dagster could be integrated with data catalog, lineage, and quality tools to provide a more robust, consistent framework for data pipelines to support our CoE Data Ecosystem

## Cons:

- Higher cost vs. open source alternatives (e.g. Dagster, Airflow, Kubeflow, Nextflow, Argo)

- Vendor dependence

- Perception risk that this signifies Dagster has already been selected as a CoE standard

- The learning curve with Dagster’s asset-based approach, though existing users have reported it’s relatively easy to learn

## Neglected Options based on desired outcomes:

- Delay purchase of Dagster+: We could have postponed procuring Dagster+ until selecting a CoE standard, but this provides valuable learning at low commitment and provides value for AI4DD

- Standardize immediately: Dagster+ purchase is low commitment through existing 2025 budget, and enables us to gather further evidence in our new CoE org

## Implementation considerations

### Why Dagster+ over Dagster OSS?

- [Branch deployments](https://docs.dagster.io/deployment/dagster-plus/ci-cd/branch-deployments) - requested feature from AI4DD

- [Launcher role](https://docs.dagster.io/deployment/dagster-plus/authentication-and-access-control/rbac/user-roles-permissions)

- Vendor support

- [Role-based user management](https://docs.dagster.io/deployment/dagster-plus/authentication-and-access-control/rbac/user-roles-permissions) (absent in OSS, which could limit adoption)

- Managed (SaaS) control plane, further simplifying operations

### Container Orchestration Platform Deployment

- Will run on Lightship, the replacement for Nostromo, as part of the gRED Cloud Foundation EKS platform. Dagster OSS already runs on Nostromo, which will be decommissioned by end of 2025

- Technical Support & Operations team (in DDC-Solutions) will own infrastructure operations, including user management

### Evaluation Use Cases

To demonstrate impact and guide potential CoE-wide decision: \* Data pipeline: via gRED Data Ecosystem, 1-2 new pipelines built on Dagster+, plus design (and preferably PoC) to validate integrations with catalog, lineage, and quality tools \* MLOps: 1-2 ML workflows to test Dagster+ alongside existing Kubeflow

Execution will be collaborative across legacy gCS and D&A orgs to ensure input into a CoE-wide recommendation.

# 🤝 Outcome / Decision

A formal checkpoint will occur in Q1 2026 led by Enterprise Architecture to review progress and evaluation against agreed upon criteria, rather than waiting until end of term:

- Eval Criteria

  - Ease of Use

  - Adoption

  - Validation against data pipeline use cases, including demonstrating (by design or implementation) integration with catalog and data lineage

  - Validation against MLOps use cases

  - Financial viability (with forecast) for broader organization adoption

  - Migration effort required for existing solutions and platforms to potentially consolidate towards Dagster+

  - Security compliance status (for being capable to rollout to boarder organization)

  - Operational efficiency

- Outcome of checkpoint

  - Clarify which use cases Dagster+ is best suited for, and which are better served by other platforms

  - Decide whether Dagster+ should be established as a CoE orchestration standard (primary or one of several)

# 📚 Resources

- [MLOps Initiative Presentation for gCS LT](https://docs.google.com/presentation/d/13xCvv1f4aFDb9realp3XFAnH47oQaAfjAzG9MjuWLcg/edit?slide=id.g2cf6639785e_1_6#slide=id.g2cf6639785e_1_6)

- Dagster vs. Kubeflow

  - [MLOps team comparison of Dagster vs. KubeFlow (2024)](https://docs.google.com/spreadsheets/d/1GjsDR1R1_K81FJuHv1rtHM-2urUZVNFJmSg4B6augsU/edit?gid=706088898#gid=706088898)

  - [Example diagram showing how Dagster is used to orchestrate ML workflow](https://code.roche.com/gred/gcs/catalysts/data-and-solutions-engineering/ace/gcs-search/imageSearchPipeline/-/blob/develop/pipeline_architecture.md)

  - [Initial discussion with MLDD on Dagster vs. KubeFlow (2024)](https://docs.google.com/presentation/d/13FgEjoWCeRy-2ADNRm1xWz5gznyqSb8HHeBJGu4OAWg/edit?slide=id.g26f131e7e3d_0_878#slide=id.g26f131e7e3d_0_878)

  - [gRED vs. pRED MLOps discussion on Dagster vs. Kubeflow usage](https://docs.google.com/presentation/d/1kPW__wejYK5ct0x_DSx_jJbk8XchLn1TfghodwnEtMw/edit?slide=id.p3#slide=id.p3)

  - [Comparison Report for Kubeflow, Dagster, Ray and Flyte (2024 - Roche InnerSource and OpenSource office conducted a review by a third-party company)](https://code.roche.com/isoso/open-source-project-health-assessment/-/blob/main/reports/Kubeflow/Kubeflow_comparison.pdf?ref_type=heads)

- Dagster vs. Airflow

  - [SADR Evaluation slide deck](https://docs.google.com/presentation/d/1ETfOmb6OuFJ6WR4lumYCu0SwN0qyVf4kLP2TokAwwFw/edit?slide=id.g328d4427f20_0_0#slide=id.g328d4427f20_0_0)

  - SADR team’s [TCO](https://docs.google.com/spreadsheets/d/1G3Wedq4voH6tBUYQ2ixZckw_yO37qLMO_8Y7WKs4iYw/edit?gid=1933340803#gid=1933340803) eval

- [Dagster video call](https://dagsterlabs.zoom.us/rec/play/7JUBSOoqv8srwQB5XTT2GSJlj7GIK0mTQokZ-y8KS7yFGAXr01qXKhn_zgfTOa8kN40sGy8ub9zfNiCW.W6Ga_wFRztUUAF0N?eagerLoadZvaPages=sidemenu.billing.plan_management&accessLevel=meeting&canPlayFromShare=true&from=share_recording_detail&continueMode=true&pwd=DACLzqcr5rwvP-NoHAAAIAAAAE4NJpouGXGZN8lz4EAqRlXq39jczVx2eRVuOFQm_jEa1nXU8dC-Q_VDNbok3Brp_jAwMDAwNA&componentName=rec-play&originRequestUrl=https%3A%2F%2Fdagsterlabs.zoom.us%2Frec%2Fshare%2FBKEsP7-2ETptLMz0O9qc8l_ACS-1lx1eOcCOojpaZOHHP7ThRvca6zfj60Hd_WHP.DoxdnfJTfTENcpOB%3Fpwd%3DDACLzqcr5rwvP-NoHAAAIAAAAE4NJpouGXGZN8lz4EAqRlXq39jczVx2eRVuOFQm_jEa1nXU8dC-Q_VDNbok3Brp_jAwMDAwNA)
---

|                  |                                |
|------------------|--------------------------------|
| Status           | Draft                          |
| Impact           | Medium                         |
| Demand Owner     | Alex Weigel                    |
| ADR Contributors | Saima Sherazi, Anish Kejariwal |
| Informed         | Architecture Council           |
| Publication Date | November 11, 2025              |

# 📗 Background

The Computational Sciences Center of Excellence (CS-CoE) was established to unify and modernize the computation and data ecosystems across Roche’s Research and Early Development (RED) organizations, including pRED and gRED. Within this context, the Architecture function plays a pivotal role in ensuring a cohesive, scalable and flexible technology landscape that enables seamless data flow, integration and AI-driven scientific innovation.

To effectively manage and govern this complex ecosystem, an architecture management tool is required that supports the documentation, analysis, and communication of architectural assets across domains, platforms and systems. The tool must facilitate traceability from business capabilities and information models to applications and technology components, while aligning with Roche’s enterprise standards and governance practices.

Two candidate solutions have emerged:

- **pRED Architecture Master Repository (AMR)** – a tool developed and used within pRED to curate and manage architecture artifacts. It has proven value in supporting reference architecture management, and providing transparency across pRED’s digital landscape.

- **Archimedes** – a global vendor solution offered by Roche Digital Technology (RDT) to support enterprise-wide architecture management and harmonization across divisions.

The decision on which tool to adopt will define the foundation for how the CS-CoE manages its architectural knowledge and enables collaboration across multiple scientific, data, and engineering domains. The selected solution must balance continuity of existing investments with long-term alignment to Roche’s global EA direction.

# ℹ️ Context

While the CS-CoE integration offers a unique opportunity to build a cohesive enterprise architecture capability, it also exposes fragmentation in the way architectural information is currently managed and shared. At present, architectural assets such as capability maps, system landscapes, and decision records are dispersed across multiple repositories.

At present, pRED utilizes the AMR, which contains rich, curated content relevant to the pRED environment and has been used effectively for transparency and governance within that context. The gRED organization does not have something similar and information is more fragmented.

In 2024, RDT introduced Archimedes, a corporate architecture management tool designed to support enterprise-wide standardization and integration of architecture data across divisions. While Archimedes aligns with global standards, its adoption within the research domain is still at an early stage and several challenges limit its applicability for CS-CoE Architecture needs:

## Scope and Complexity

Archimedes covers all of Roche, including Pharma and Diagnostics. People can easily be overwhelmed by the breadth of data outside their domain. For example, when selecting a Business Capability, all taxonomies across Roche are displayed rather than only RED-specific ones, which makes it harder for people to fill in the information properly. This is especially true for colleagues with a non-technical background like scientists, who might be overwhelmed by the lack of scoped research specific records.

## Governance Limitations

Archimedes currently operates on a wiki-like model, allowing any user to edit records. However, the CS-CoE necessitates a more stringent governance framework with role-based ownership and edit rights. While all gRED or pRED members can create new records, editing is restricted to individuals with a designated role (e.g., System Owner) for the specific record. Members of the architecture group have the authority to modify all records, including the ability to delete records and alter architecture-specific fields. Architects receive notifications upon the creation of new application records. Similarly, the designated contacts for an application are informed when responsibilities change. Additionally, Archimedes lacks support for structured workflows required by certain metadata attributes, such as DOJ Sensitive Data Compliance.

## Business Capability Model Gaps

Archimedes does not support ontological structures, meaning entities cannot belong to multiple parent capabilities. Capability definitions are not available at selection, which limits usability and consistent understanding of taxonomy terms.

## Speed and Flexibility

Changes to business capabilities, data object terminology, or organizational structures can only be executed by a central administrative team, creating bottlenecks. The evolution of taxonomies such as PRISME requires regular updates and mappings, which cannot be performed locally. Bulk or metadata updates require central intervention, delaying updates and limiting responsiveness.

# 🌈 Consequences

The CS-CoE therefore faces a strategic choice:

1.  continue leveraging and expanding AMR to support needs for architecture management across the REDs, or

2.  adopt Archimedes to align early with global standards and enable long-term convergence into Roche’s enterprise architecture ecosystem.

This decision is critical for establishing an effective architecture governance model within the CS-CoE, avoiding redundant effort, ensuring a single source of truth, and enabling a seamless flow of architectural information across organizational boundaries.

# 🤝 Outcome / Decision

Both candidate solutions — AMR and Archimedes — address aspects of architecture management within Roche but differ significantly in maturity, scope, and alignment with CS-CoE needs.

## pRED Architecture Master Repository (AMR)

**Strengths:**

- Proven effectiveness in managing architecture for research-specific use cases.

- Already embedded in pRED governance processes, with curated content and domain-specific data models aligned to research needs.

- Lightweight and flexible, enabling quick updates to taxonomies, capability structures, and metadata fields.

- Supports clear ownership and editing rights, providing strong governance control.

- Readily usable by pRED and gRED colleagues, reducing onboarding complexity.

**Limitations:**

- Operates as a local solution without enterprise integration into Roche-wide tools.

- Limited visibility outside pRED.

- Is a custom application, where long-term sustainability depends on continued local support and development.

## Archimedes

**Strengths:**

- Enterprise-wide SaaS platform endorsed by RDT, ensuring strategic alignment and potential for cross-divisional harmonization.

- Long-term sustainability secured through central RDT ownership and support.

- SAP SaaS offering with vendor support

- Built-in dashboards for heatmaps and dependency analyses

- Pan Roche architecture management tool with existing data / usage from extended organizations (PD, Pharma and DIA) to connect REDs with other parts of the value chain when an E2E view is warranted

**Limitations:**

- Not yet adapted to the specific needs of the research domain; limited support for scientific ontologies and complex capability hierarchies.

- Governance model currently too open for CS-CoE requirements.

- The central administration model creates delays and limits flexibility.

- User experience is not optimized for non-architects or domain scientists, which may reduce adoption.

- Costs are charged by number of applications, which may result in a cost increase and potentially chargeback to the CS-CoE by RDT.

- A steep learning curve for non-technical users to understand complex architectural terminologies while maintaining their apps compliance / lifecycles / dependencies.

- The data section in Archimedes was recently introduced, so it’s unclear how deeply it can analyze the flow and dependencies, as well as connectivity with technology layers (dependencies with upstream and downstream systems for each critical DDC domain system).

## Recommendations

Given the current maturity, usability, and governance requirements of the CS-CoE, the recommended approach is a **phased strategy**:

1.  Continue leveraging and evolving the AMR as the operational architecture management tool for the REDs and the CS-CoE

    1.  Extend its scope to include both pRED and gRED.

    2.  Establish common taxonomies e.g. Business Capabilities, Data Objects

    3.  Onboard gRED applications, and transition away from existing gRED processes to standardize our process across the CoE

2.  Engage with RDT to

    1.  Establish an automated data upload interface from AMR to Archimedes to make the data available in Archimedes for analysis across business units

    2.  Shape the evolution of Archimedes so that it can meet research specific needs and governance requirements

    3.  Establish a cohesive streamlined approach for what is the source of truth for information stored in Archimedes, IRM, CMDB, and ACT, and for RDT to build integrations between these systems to minimize duplication, increase consistency, and simplify things for business and technical application owners

This approach maintains domain-specific flexibility, and positions the CS-CoE for eventual convergence with Roche’s enterprise architecture tool. It balances immediate usability and effectiveness with long-term strategic alignment.

# 📚 Resources

- [Archimedes](https://archimedes.roche.com)

- [Archimedes wiki](https://rochewiki.roche.com/confluence/display/GIA/ArchiMEDES)

- [AMR](https://go.roche.com/amr)
---
