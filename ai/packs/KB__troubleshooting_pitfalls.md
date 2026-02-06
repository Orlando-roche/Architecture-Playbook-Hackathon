# Knowledge Base Pack: Troubleshooting and Pitfalls

> Source: `src/asciidoc/modules/knowledge_base/pages/` (security articles, CVE handling)

---

## Common Vulnerabilities and Exposures (CVEs)

CVEs are publicly known vulnerabilities in software which need to be fixed or mitigated within a certain timeframe.

### Notification and Scanning

- **Email Lists**: Subscribe via gds-selfsubscription.roche.com for notifications about certain types of applications
- **Automated Scans**: Roche provides support for automated system scans

### Responsibility

- Stay on the look-out for CVEs in base images and code library dependencies
- Check dependencies on a regular basis

---

## CVE Handling by Hosting Platform

### Virtual Machines
CVEs in VMs will be patched by GIS.

### Docker Images
- Docker images need to be patched by the respective team
- Scans by Aqua are run by the Minerva team every 6 months
- CVEs in the CaaS environment can be found on the Aqua overview page

---

## CVE Resolution Process

### Timeframe
**Rule of thumb**: For internal systems, the fix for a CVE should be deployed within two weeks.

### Tasks for Application Teams

1. Receive notification of CVE
2. Assess impact on your application
3. Obtain and test patched vendor products
4. Deploy fix within required timeframe
5. Document resolution

### Java-Specific Tools

Use these plugins to flag outdated dependencies during build:
- OWASP dependency check
- Maven dependency check

Outdated dependencies have an increased risk of containing a CVE.

---

## Authentication Troubleshooting

### PingFederate Client Onboarding

**Important**: Onboarding is always done on Ping Federate QA (wamqa.roche.com) first. The full client onboarding is only complete after onboarding to Ping Federate PRD (wam.roche.com).

### Common Authentication Issues

| Issue | Solution |
|-------|----------|
| SSO not working | Verify PingFederate configuration |
| Token validation failing | Check token expiration and refresh logic |
| OAuth flow errors | Review grant type configuration |

---

## Authorization Troubleshooting

### API Access Issues

Before using authorization APIs, ensure you have the API consumer role as described in the Gravitee documentation.

### Common Authorization Issues

| Issue | Solution |
|-------|----------|
| RedPanda API not returning data | Verify API consumer role |
| AD group membership not found | Check group name and user membership |
| IAM Proxy returning errors | Verify access token is valid |

### Important Note on Authorization APIs

These APIs only provide access management information. **Consuming applications need to apply it!**

The consuming applications also need to decide:
- Which project data should be exposed
- Whether all users should consume the same data
- Whether application-specific roles apply

---

## WSL2 Troubleshooting

### Internal Connectivity Issues
External connectivity from WSL2 may require additional configuration. See overflow.roche.com for solutions.

### Disk Space Issues
WSL will consume significant disk space, especially when used with Docker.

**Solution**: See Roche Wiki for instructions on reclaiming space.

---

## Renovate Bot Troubleshooting

### Configuration MR Not Opening

**Problem**: Invited Sally the Alpaca Bot to maintainers, but the configuration MR was not opened.

**Cause**: The Roche Renovate Bot opens a branch called `renovate/configure` with commit title `chore: Configure renovate`. If your branch name rules or commit message rules are not compatible, Sally cannot open the MR.

**Solution**: Amend the rules or temporarily remove them.

### Private Registry Access

**Problem**: Renovate Bot can't access private registries.

**Solution**: Reach out to the DevHub team. Alternatively, fork the Roche repository and set up the bot in your GitLab Group (requires maintaining the entire infrastructure).

---

## Pipeline Failures

### Common Antora/OneDoc Pipeline Failures

| Error | Solution |
|-------|----------|
| Broken internal link | Check xref syntax and file paths |
| HTTP instead of HTTPS | Update URLs to use HTTPS |
| Invalid anchor/hash | Remove or fix the URL fragment |
| Double `.adoc.adoc` | Remove duplicate extension |

---

## JetBrains License Issues

### Windows Toolbox Installation Issues

If you encounter issues installing or configuring the JetBrains Toolbox on Windows, use manual activation:

1. Open your JetBrains IDE
2. Go to Help > Register
3. Select Paid license > License server
4. Enter: `https://roche-cscoe.jetbrains-ide-services.com/`
5. Click Activate

### License Seat Unavailable

**Cause**: All floating licenses are in use.

**Solution**:
- Wait for a seat to become available
- Ask colleagues to close unused IDEs
- Consider using community editions

---

## Security Best Practices

### Secrets in Code

Never commit secrets to repositories. Use:
- Environment variables
- Secret management tools
- Secrets scanning tools (see overflow.roche.com for options)

### Data Classification

Always define and protect data according to Roche privacy and data-handling policies before deployment.

---

## Getting Help

### Internal Resources
- **Roverflow**: overflow.roche.com (internal StackOverflow)
- **gSpaces**: Various developer communities
- **Slack**: #cs-coe-ddc-architecture

### External Documentation
- PingIdentity docs for OAuth 2.0 flows
- Renovate Bot official documentation
- JetBrains IDE Services documentation
