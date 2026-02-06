# CS-CoE Architecture Playbook

The CS-CoE Architecture Playbook is a collection of best practices, guidelines, and standards for designing and implementing software architectures within the Computational Sciences Center of Excellence at Roche.

## Repository Structure

```
playbook/
├── .devcontainer/
│   └── devcontainer.json       # Dev container configuration
├── .gitlab-ci.yml              # CI/CD pipeline configuration
├── src/asciidoc/
│   ├── antora.yml              # Antora component descriptor
│   └── modules/
│       ├── ROOT/               # Main playbook content
│       │   ├── nav.adoc        # Site navigation
│       │   ├── pages/          # Core pages (team, process, bodies)
│       │   ├── partials/       # Shared includes (_commons.adoc)
│       │   └── images/         # Image assets
│       ├── governance/         # Architecture Decision Records (ADRs)
│       │   └── pages/
│       │       └── YYYY-reviews/   # ADRs organized by year
│       ├── guidelines/         # Architecture guidelines and guardrails
│       │   └── pages/
│       └── knowledge_base/     # Developer knowledge base articles
│           ├── pages/
│           └── images/
```

## Modules Overview

| Module | Purpose |
|--------|---------|
| **ROOT** | Core playbook content: team structure, processes, architecture bodies |
| **governance** | Architecture Decision Records (ADRs) from review forums |
| **guidelines** | Architecture guiding principles and guardrails |
| **knowledge_base** | Developer resources, tools, and how-to articles |

## Good to Know

### Tech Stack
- **Antora** - Static site generator for AsciiDoc documentation
- **AsciiDoc** - Markup language for all content (.adoc files)
- **GitLab CI** - Automated build and deployment via OneDoc pipeline
- **Kroki** - Diagram rendering (inline SVG)

### Page Template
Every new page must follow this structure:

```asciidoc
:moduledir: ..
include::{moduledir}/../ROOT/partials/_commons.adoc[]

= Page Title
:page-content-owner-email: your.email@roche.com

Your content here...
```

### Cross-References
- Same module: `xref:page-name.adoc[]`
- Other module: `xref:module_name:page-name.adoc[]`

Example:
```asciidoc
xref:knowledge_base:jetbrains-licenses.adoc[JetBrains Licenses]
```

### Images
1. Place images in the module's `images/` directory
2. Reference with: `image::filename.png[]`

### Navigation
All pages must be added to `src/asciidoc/modules/ROOT/nav.adoc` to appear in the site navigation.

## How to Contribute

### 1. Create a Branch

```bash
git checkout main
git pull origin main
git checkout -b your-branch-name
```

Use descriptive branch names, e.g.:
- `add-kubernetes-guidelines`
- `adr-26-01-api-gateway`
- `fix-broken-links`

### 2. Make Your Changes

- Add or edit `.adoc` files in the appropriate module
- Follow the page template structure
- Update `nav.adoc` if adding new pages
- Test locally if possible

### 3. Commit and Push

```bash
git add .
git commit -m "Brief description of changes"
git push origin your-branch-name
```

### 4. Open a Merge Request

1. Go to [https://code.roche.com/cs-coe-architecture/playbook/-/merge_requests/new](https://code.roche.com/cs-coe-architecture/playbook/-/merge_requests/new)
2. Select your branch as source, `main` as target
3. Add a descriptive title and description
4. **Add reviewers from the Core Architecture team**
5. Submit the merge request

### 5. Review Environment

After pushing, a review environment is automatically created. Access it via:
- **Operate → Environments → review/your-branch-name → Open**

This allows you to preview your changes before merging.

## Pipeline

The CI pipeline runs automatically on every push:

| Job | Purpose |
|-----|---------|
| `docs` | Builds the Antora documentation |
| `pages` | Deploys to GitLab Pages (main branch only) |
| `html-proofer` | Validates links and HTML |
| `pages:review` | Creates review environment for branches |

### Common Pipeline Failures

| Error | Solution |
|-------|----------|
| Broken internal link | Check xref syntax and file paths |
| HTTP instead of HTTPS | Update URLs to use HTTPS |
| Invalid anchor/hash | Remove or fix the URL fragment |
| Double `.adoc.adoc` | Remove duplicate extension |

## Contact

- **Architecture Team**: [CSCoE-DDC-EA-d@gene.com](mailto:cscoe-ddc-ea-d@gene.com)
- **Architecture Catalyst Council**: [CSCOE-ARCHITECTURE-CATALYST@msxdl.roche.com](mailto:cscoe-architecture-catalyst@msxdl.roche.com)
- **Slack**: [#cs-coe-ddc-architecture](https://roche.enterprise.slack.com/archives/C097C8D6S0M)
