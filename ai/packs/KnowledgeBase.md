# Knowledge Base

> Source: `src/asciidoc/modules/knowledge_base/pages/`

---

## Developer Quickstart

A quick overview of useful tools and platforms for developers at Roche.

### DevHub

The Roche Dev Hub provides a platform with all components and capabilities for development teams to build software faster, better, and with embedded security.

**Key Platforms**:
- **GitLab**: code.roche.com
- **Artifactory**: eu.repository.roche.com
- **Docker**: Available with license
- **Sonarqube**: Code quality analysis

**Resources**:
- DevHub: devhub.roche.com
- TechRadar available on DevHub

### Open Source @ Roche

See opensource.roche.com/policies for details on how Open Source can be used at Roche, including contributing to Open Source projects.

### Inner Source @ Roche

A culture of sharing, collaboration and contribution. Develop software transparently facing a Roche-wide development community.

**Site**: innersource.roche.com

### Roche Design System

The Roche Design System (rdesignsystem.roche.com) contains resources for following the Roche branding.

---

## JetBrains Licenses

The CS CoE has 50 licenses of the JetBrains All Products Pack.

### Who Can Use
- All members of the CS CoE Department
- Contractors working directly with CS CoE colleagues
- NOT for other departments or their contractors

### Best Practices
- Close IDEs when not in use (floating licenses)
- Avoid opening multiple IDEs simultaneously
- Consider community editions if professional features aren't needed

### How to Activate

1. Visit: roche-cscoe.jetbrains-ide-services.com
2. Install JetBrains Toolbox App
3. Sign in using Roche credentials
4. Click 'Join Roche CS COE'

**Manual Activation (Windows)**:
1. Open JetBrains IDE
2. Go to Help > Register
3. Select Paid license > License server
4. Enter: `https://roche-cscoe.jetbrains-ide-services.com/`
5. Click Activate

---

## Renovate Bot

The Roche Renovate Bot (Sally the Alpaca) automatically scans and updates software dependencies using pull requests.

### Benefits
- Automatic dependency updates
- Works out of the box with monorepos
- Configurable scheduling
- Open source (GNU AGPL)

### Getting Started

1. Use the Self-hosted installation maintained by the DeveloperHub team
2. Follow instructions at: devhub.roche.com/docs/default/Component/fk-renovate-roche
3. Add Sally the Alpaca Bot as maintainer to your repository

### FAQ

**Q: Configuration MR not opening?**
A: The bot opens branch `renovate/configure` with commit title `chore: Configure renovate`. If your branch/commit rules are incompatible, amend them temporarily.

**Q: Can't access private registries?**
A: Reach out to the DevHub team.

---

## Docker at Roche

Docker Desktop and Docker Hub require a license.

### Getting a License
- Documentation: penguins.pages.roche.com/solutions-wiki/Docker/docker/
- License application: devhub.roche.com/docs/default/System/fk-ef-docker-business

### Alternative
Consider using Rancher as a front-end to docker-ce.

---

## GitHub Copilot

Apply for a Copilot license through ServiceNow (agree with your line manager first).

### Alternatives for Occasional Use
- R&D Chat: rdchat.roche.com
- RocheChat: rochechat.roche.com

---

## Windows Subsystem for Linux (WSL)

On Windows, you probably need WSL2.

### Known Issues
- Internal connectivity may require additional configuration
- WSL can consume significant disk space, especially with Docker
- See Roche Wiki for space reclamation instructions

---

## IDEs

| IDE | Use Case | License |
|-----|----------|---------|
| JetBrains Ultimate | Java, Python, etc. | CS CoE floating license |
| VSCode | General development | Free (review extensions) |
| SQL Developer | Database work | Free |

---

## Common Vulnerabilities and Exposures (CVEs)

CVEs are publicly known vulnerabilities that need to be fixed or mitigated within a certain timeframe.

### Notification and Scanning
- Subscribe via gds-selfsubscription.roche.com for notifications
- Roche provides support for automated system scans

### CVE Handling by Platform

| Platform | Responsibility |
|----------|----------------|
| VMs | Patched by GIS |
| Docker images | Patched by respective team |
| CaaS | Scans by Aqua (Minerva team) |

### Timeframe
**Rule of thumb**: Fix for a CVE should be deployed within two weeks for internal systems.

### Java-Specific Tools
- OWASP dependency check
- Maven dependency check

---

## Open Source License Compliance

### Overall Policy
1. Determine the License
2. Assess if use aligns with permissions
3. Apply the License/Use Case Matrix
4. Generate SBOM for dependencies

### Release CS CoE Code as Open Source
See opensource.roche.com/policies/Genentech-Pharma-REDs/open-source-release-process

### Implementing SBOM and License Checks
GitLab has out-of-box capabilities using CycloneDX.

**Configure dependency scanning**:
```yaml
include:
  - template: Jobs/Dependency-Scanning.gitlab-ci.yml
```

---

## Authentication

Use Roche SSO via PingFederate for user authentication.

### Client Onboarding
1. Onboard on Ping Federate QA (wamqa.roche.com) first
2. Complete onboarding on Ping Federate PRD (wam.roche.com)

### OAuth 2.0 / OpenID Connect
Standard protocols for authentication.

---

## Authorization

### Authorization APIs

| API | Purpose | Platform |
|-----|---------|----------|
| RedPanda API | Project data access management | Gravitee |
| pREDiLogin API | AD group membership checking | Gravitee |
| IAM Proxy API | Combined RedPanda + pREDiLogin + OIDC | Gravitee |
| CIDM Group Management API | Group management | Mulesoft |

### Auto-filled AD Groups

| Group | Description |
|-------|-------------|
| GLOpAppAuth_pRED_All | All pRED users |
| GLOpAppAuth_CSCoE_All | All CS-CoE users |
| GLOpAppAuth_gRED_All | All gRED users |
| GLOpAppAuth_CICoR_All | All CICoR users |

**Important**: These APIs only provide access management information. Consuming applications need to apply it!

---

## Certificates

### Certificate Types
- **Server Certificates**: Authenticate server identity, enable HTTPS
- **Client Certificates**: Authenticate requester identity to server

### Order Certificate
- **ProTools** (preferred for client certificates): emea.leap.roche.com/LCA_GLOB_MuleUtils/
- **iCare**: roche.service-now.com

### ACME Service
Automatic Certificate Management Environment for automated certificate request and renewal.

**Contacts**:
- Server Certificates: bettina.crippa@roche.com, carlos.fenoy@roche.com
- Client Certificates: david.herzig@roche.com

---

## Data Workflow Documentation Best Practices

### Mandatory Information
- Title
- Version (Semantic Versioning)
- Workflow Owner/Maintainer
- Description
- Steps of workflow
- Workflow Category/Type
- Source code location
- Inputs and Outputs
- Access requirements

### Optional Information
- Version History/Changelog
- Diagram
- Tags/keywords
- Tools/programming language
- Licensing information

---

## Low-Code Platforms

### Recommended Platforms

1. **pRED APEX Platform** (go.roche.com/apex)
   - Preferred for data-driven applications in pRED
   - Rapid development of secure, database-centric solutions

2. **Monday.com**
   - Recommended for self-service project and work management
   - Replaces Smartsheet, MS Project, Asana

3. **LEAP / Outsystems**
   - Preferred Roche Digital Technology platform
   - Enterprise-grade application development

**Resources**:
- Roche A-RAD Team: sites.google.com/roche.com/a-rad/home

---

## Help Resources

### Developer Communities (gSpaces)
- pRED D&A Tech Topics
- CoP Architecture
- pRED Code Club
- pyRoche: Python User Group
- Dev CoP
- Data CoP
- DevOps Days
- Security CoP

### Internal StackOverflow
- overflow.roche.com

### OneDoc
- Tech docs: onedoc.pages.roche.com
- Documentation on writing OneDoc: onedoc.pages.roche.com/core/docs/

### Secrets Scanning
Discussion at overflow.roche.com on how to scan for secrets in code/repos.
