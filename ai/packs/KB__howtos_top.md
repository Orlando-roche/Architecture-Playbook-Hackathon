# Knowledge Base Pack: Top How-Tos

> Source: `src/asciidoc/modules/knowledge_base/pages/`

---

## Developer Quickstart

A quick overview of useful tools and platforms for developers at Roche.

### DevHub

The Roche Dev Hub provides a platform with all the components and capabilities required for Development teams to build software faster, better and with embedded security.

**Key Platforms**:
- **GitLab**: code.roche.com
- **Artifactory**: eu.repository.roche.com
- **Docker**: Available with license
- **Sonarqube**: Code quality analysis

**Resources**:
- DevHub: devhub.roche.com
- Developer Experience Summary
- Embedded Security and Compliance docs
- Development Acceleration docs

### Open Source @ Roche

See opensource.roche.com/policies for details on how Open Source can be used at Roche, including contributing to Open Source projects.

### Inner Source @ Roche

A culture of sharing, collaboration and contribution. Develop software transparently facing a Roche wide development community. Reuse already existing solutions.

**Site**: innersource.roche.com

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

The Roche Renovate Bot automatically scans and updates software dependencies in your Git repository using pull requests.

### Benefits
- Automatic dependency updates
- Works out of the box with monorepos
- Configurable scheduling
- Open source (GNU AGPL)

### Getting Started

1. Use the Self-hosted installation maintained by the DeveloperHub team
2. Follow instructions at: devhub.roche.com/docs/default/Component/fk-renovate-roche
3. Add Sally the Alpaca Bot as maintainer to your repository

### Initial Configuration

The bot will create an initial pull request with a `renovate.json` file containing recommended settings.

**Repository**: code.roche.com/gitlab/renovate-roche/

---

## Docker at Roche

Docker Desktop and Docker Hub require a license to use. Roche has access to these licenses.

### Getting a License
- Documentation: penguins.pages.roche.com/solutions-wiki/Docker/docker/
- License application: devhub.roche.com/docs/default/System/fk-ef-docker-business

### Alternative
Consider using Rancher as a front-end to docker-ce (docker engine).

---

## GitHub Copilot

Apply for a Copilot license through ServiceNow (agree with your line manager first).

**Application**: roche.service-now.com (search for Copilot)

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

## Secrets Scanning

There is a discussion of how to scan for secrets in your code/repos at overflow.roche.com.

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

---

## Data Workflow Pipeline

*Content available in source documentation.*

---

## Low Code Platforms

*Content available in source documentation.*

---

## Open Source Guidelines

*Content available in source documentation.*
