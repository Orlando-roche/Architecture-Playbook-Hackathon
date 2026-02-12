# Knowledge Base

> Source: `src/asciidoc/modules/knowledge_base/pages/`

---

# Objective

This documents aims to highlight the best practices around the miniminimal information to be provided as data workflow/pipeline documentation as defined in the Data & Workflows Engineering Capability Circle.

- The documentation of the workflow should be readable by end-users without having to access the code

- It needs to be accessible by everyone, not only by users of the code (findability)

- In-scope of this best practice are automated or semi-automated computational workflows such as data processing/transformation pipelines

- Out-of-scope are manual or business workflows (e.g. assay/experiment protocols, etc.)

| Information                                                                                                                                  | Purpose                                                                                                          | Mandatory vs. Optional |
|----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|------------------------|
| Title → Comprehensive but crisp and unambiguous title                                                                                        |                                                                                                                  | M                      |
| Version → Current version of the Workflow using Semantic Versioning Scheme (<https://semver.org/>)                                           | E.g. first release v1, small change v1.1., larger change v2… for versions that are made available to other users | M                      |
| Version History/Changelog                                                                                                                    |                                                                                                                  | O                      |
| Workflow Owner/Maintainer ((team) name and email)                                                                                            |                                                                                                                  | M                      |
| Description → Brief abstract about the purpose of the workflow extending the title (e.g. modalities, types of data, outputs of the workflow) |                                                                                                                  | M                      |
| Steps of workflow including description (component/software tool used, version of tool, command line executed, including manual steps)       | In brief, this can be a more holistic and detailed description. It should inform the reader what is used.        | M                      |
| Diagram of the workflow                                                                                                                      |                                                                                                                  | O                      |
| Tags or keywords (e.g. data types)                                                                                                           | For searching in case a workflow registry is available, independent of the used platform                         | O                      |
| Workflow Category/Type of Analysis → (type (preprocessing, QC), technology (single cell, rnaseq, image processing))                          | Existing in RTS, genomic, transcriptomic, single-cell, imaging, other/to be defined → as drop-down/selection?    | M                      |
| Tools/programming language (Python, Pipeline Pilot, KNIME, etc)                                                                              | If a user wants to search for workflows created in a tool he/she already knows                                   | O                      |
| Source code location or external documentation (“How to” of workflow)                                                                        | Link or link to Wiki page                                                                                        | M                      |
| Inputs including type (e.g. type of data or file format etc.) and description                                                                |                                                                                                                  | M                      |
| Outputs including description/type                                                                                                           |                                                                                                                  | M                      |
| Is workflow non-restricted or requires access? (if requires access, how to apply for access)                                                 |                                                                                                                  | M                      |
| Any licensing regarding the tools used                                                                                                       |                                                                                                                  | O                      |
| Any licensing regarding the data (for which the workflow was created; if this is unclear reach out to DWE circle)                            |                                                                                                                  | O                      |

---

This document is aimed to give a quick overview of some of the useful tools and platforms for developers at Roche, so that new joiners can get started developing effectively. We’d recommend that you take this as a starting point, and ask around if a tool or platform is missing. The goal is to strike a balance between effective personal workflow, and gaining from critical mass working in a similar way.

The Roche Dev Hub gives some information about platforms that you could consider defaults to use. Of course there may be a reason to need something different, but the linked platforms are well documented, well supported and the easiest place to start. When using these tools and platforms you are most likely to find a colleague, or example to help you with any issues arise.

# DevHub

> We provide a platform with all the components and capabilities required for Development teams working across Roche to build software faster, better and with embedded security, through our one stop shop Internal Developer Portal
>
> —  [DevHub](https://devhub.roche.com/)

E.g. [Gitlab](https://code.roche.com), [Artifactory](https://eu.repository.roche.com), Docker, Sonarqube and other relevant platforms are detailed. There is also a handy TechRadar, and docs on several relevant topics. More details on Dev Hub [here](https://sites.google.com/roche.com/devsecops-enablement?pli=1).

In addition to the details on the site, there are several other useful resources:

- [Developer Experience Summary](https://docs.google.com/document/d/19mAWeKsTwc5JAASp9RqsMQcleOw8ecPd-2OgtieCTWw/edit)

- [Embedded Security and Compliance](https://docs.google.com/document/d/1S4-_3x2JqwaynQkjOO7M95P2k8RwDD-iBbVdQq98U04/edit#heading=h.ce4rk8b7azd8)

- [Development Acceleration](https://docs.google.com/document/d/1h6nBoxpoaahAkl0XMKcrZYD1ZFotQrpfU0Vo5JeCQDg/edit#heading=h.86bkllc16hdy)

# Open Source @ Roche

The following [link](https://opensource.roche.com/policies/using-external-open-source-code-within-roche) gives details on how Open Source can be used at Roche. Furthermore linked from that page are details on contributing to Open Source projects.

# Inner Source @ Roche

> A culture of sharing, collaboration and contribution. Develop software transparently facing a Roche wide development community. Reuse already existing solutions.
>
> —  [Innersource](https://innersource.roche.com/)

# Roche Design System

The [Roche Design System](https://rdesignsystem.roche.com/) contains resources for following the Roche branding.

# Windows / Mac

Recommendation for when to choose one v. the other?

# Windows Sub-system for Linux

On Windows you probably need WSL2. Install with the \[standard instructions\]. You may need to do some more nonsense, to get internal connectivity to work as expected, see [here](https://overflow.roche.com/t/external-connectivity-from-wsl-2/7264/26). Beware WSL will eat your hard drive, especially when used with Docker! [See the following to reclaim space](https://rochewiki.roche.com/confluence/pages/viewpage.action?pageId=709528197)

# IDEs

You need something more powerful than Vim - is that possible…​?

- **Jetbrains Ultimate** license is available, for e.g. IntelliJ - recommended for Java, [details here](knowledge_base:jetbrains-licenses.xml).

- **VSCode** - make sure to review the extensions that you use (acceptable license - see above, and reputable source).

- [SQL Developer](https://www.oracle.com/database/sqldeveloper/)

# Starters, Archetypes and example projects

- [Cookiecutter Python Poetry project](https://code.roche.com/fullerj8/poetry-starter) (work in progress) to work with Python in VSCode in a Docker container on Windows/Mac.

# Docker

Docker Desktop, and Docker Hub require a license to use. Roche has access to these licenses. The docs are [here](https://penguins.pages.roche.com/solutions-wiki/Docker/docker/), and the link to the license application is [there](https://devhub.roche.com/docs/default/System/fk-ef-docker-business).

You might prefer to use Rancher as a front-end to docker-ce (docker engine).

# Secrets scanning possibilities

There is a handy discussion of [how to scan for secrets in your code/repos](https://overflow.roche.com/t/secrets-detection-solutions/16292).

# Help!

## Copilot (code assistant)

Who writes their own code anymore…​ You can apply for a Copilot license [here](https://roche.service-now.com/rose?id=sc_cat_item&sys_id=6212c26c87443dd4f9f9a9f30cbb3588) (agree with you line manager first).

Our colleagues in PMDA produced a [handy training](https://docs.google.com/presentation/d/1e_30-pS8Abh42Qob5KTRr-P0JgAqVl1uxBNA4b3LEsY/edit#slide=id.g2e704978aea_0_2), covering e.g. what C-level of data can be used.

[R&D Chat](https://rdchat.roche.com/) or [RocheChat](https://rochechat.roche.com/) are possible cost-effective alternatives for occasional use.

## Dev gSpaces

Unbelievably, LLMs can’t solve all of our problems. In case you need some help from a human, you might find it in the following gSpaces.

There are several useful gSpaces for discussing tech related topics:

- [pRED D&A Tech Topics](https://chat.google.com/room/AAAAdATuNrw?cls=7)\]

- [CoP Architecture](https://chat.google.com/room/AAAALNQchNQ?cls=7)

- [pRED Code Club](https://chat.google.com/room/AAAAUNmLIkg?cls=7)

- [pyRoche: Python User Group](https://chat.google.com/room/AAAAfp03KV4?cls=7)

- [Dev CoP](https://chat.google.com/room/AAAAvxQj8bk?cls=7)

- [Data CoP](https://chat.google.com/room/AAAAeCstSqI?cls=7)

- [DevOps Days](https://chat.google.com/room/AAAAIUiugEo?cls=7)

- [Security CoP](https://chat.google.com/room/AAAAkR1jIdE?cls=7)

## Internal Stackoverflow (Roverflow)

An internal version of [StackOverflow](https://overflow.roche.com/)

## OneDoc

- [Tech docs for D&A](https://onedoc.pages.roche.com/).

- [Documentation on writing OneDoc](https://onedoc.pages.roche.com/core/docs/).

# Super comprehensive details

See the [following link](https://code.roche.com/one-d-ai/technical-wiki/-/wikis/guidelines/Starter-Kit) for a tonne of extra useful information.

---

Version 1.0 July 2022

CVEs are publicly known vulnerabilities in software which need to be fixed or mitigated by us in a certain timeframe. General information about CVEs can be found in the internet such as [Wikipedia: CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)

Roche helps in running [notification email lists](https://gds-selfsubscription.roche.com/#/group/GLOVMCVA) for certain types of applications. Additionally, Roche is increasing their support for [automated system scans](https://sites.google.com/a/roche.com/vm/processes/vulnerability-reports).

We also need to stay on the look-out for less publicly known CVEs in checking our base images and code library dependencies on a regular basis.

# Assistance per hosting platform

CVEs in our VMs will be patched by GIS.

Docker images need to be patched by the respective team. Our platforms help in running regular scans for us. Scans by Aqua are run by the Minerva team every 6 months as of 2022. CVEs in the CaaS environment can be found on their [overview page](https://aqua.kubemeainfra.science.roche.com/).

# Tasks for applications and services

Patch activities are the duty of the respective service and project team. It is also in their responsibility to receive and deploy patched vendor products in a timely manner. Details can be found in the [Roche Security Patch Management Standard](https://drive.google.com/file/d/1YtaHWakWm0lvUE622lBlmd8t92g2YOns/view).

Rule of thumb for internal system mean that the fix for a CVE should be deployed within two weeks.

Inspiration for a CVE resolution process can be found in the strategy outlined by the [Minerva team](https://pred-scicomp.pages.roche.com/cloud/minerva/documentation/200-devops-guide/020-platform-operations/800-vulnerability-management.html).

In the case of Java, plugins such as the OWASP and Maven dependency check can help to flag outdated dependencies when building the software. Outdated dependencies have an increased risk of containing a CVE.

---

<div class="important">

This article is still a work in progress and will be updated to provide a holistic view of the CS CoE.

</div>

# Client Onboarding

<div class="important">

The below steps describe the requesting flow. Onboarding is always done on Ping Federate QA (wamqa.roche.com) first. **However, the full client onboarding is only complete after onboarding to Ping Federate PRD (wam.roche.com)**

</div>

1.  General remarks

    - [Service Book](https://docs.google.com/presentation/d/1LjrKy8sOVo9IRY8n8eTuezlXO_YHdLrcAGmDBOIzGts/edit#slide=id.g9a3813994d_1_24) - This book defines the service for SSO via PingFederate.

    - We keep a list of all our PingFed clients used in pRED for better transparency. Therefore please add your client as well in [this gSheet](https://docs.google.com/spreadsheets/d/1IQVFoi_OmRCxD-uJvy2oTVIFapBGwtvM_M-GULStdZ0/edit#gid=0).

    - We have a special [chat space](https://chat.google.com/room/AAAAebrOyNY?cls=1) with the IAM team in place to follow up on specific technical topics around our PingFed clients.

    - To ensure interoperability of our applications all PingFed clients should use the **pRED standard token structure**.

    - You might order different clientIDs for your different environments ("pred-myApplication-dev", "pred-myApplication-prod"). However, this is not a must. In fact all redirect URLs from all environments can be added to the same PingFed client.

    - You need to have an entry for your application in [ACT](https://roche.service-now.com/act). Please make sure to mark your application as using SSO and add "Ping Federate" as dependency in the tech profile:

<figure>
<img src="../images/Act.png" alt="Act" />
</figure>

1.  If you need a PingFed client for **standard authorization code flow**

    - Follow the instructions in [this KB article](https://roche.service-now.com/rose?id=kb_article_view&table=kb_knowledge&sys_kb_id=539434fa87b2521800f232640cbb3542) and use the automated OAUTH integration by creating an iCare ticket using [this form](https://roche.service-now.com/icare?id=sc_cat_item&sys_id=ae42511487e1d2141f3c63560cbb357e).

    - **Important**: Please select the "pRED standard Access Token" in the "Access Token Management OIDC Policy"

      <figure>
      <img src="../images/Token-standard.png" alt="Token standard" />
      </figure>

    - The redirect URL(s) are not (yet) included in the form and will need to be configured after the initial setup.

    - Once the client has been tested on wamqa (PingFed QA), you can also use this form for propagating the client to wam (PingFed Prod) by selecting the corresponding value in "Task".

<!-- -->

1.  If you need a PingFed client for **other authentication flows** (ROPC, Client Credentials, Device Authentication)

    - You can still request a client via the above form and contact the IAM team to adjust it accordingly.

    - Or you use the general iCare [request form](https://roche.service-now.com/rose?id=nr_sc_cat_item&sys_id=d92621871b4625d046bcdca19b4bcbf0) for “Web Access Control SSO/Federation/OAuth/OIDC Integration”.

      - Access Token Manager Claims OR existing Access Token Manager Name: please do not specifiy individual claims but just write "**pRED standard token structure**"

      - OpenID Connect Policy Claims OR existing OpenID Connect Policy: please do not specifiy individual claims but just write "**pRED standard token structure**"

After the iCare request has been processed, the following information will be provided:

- Client ID: E.g. "pred-myApplication"

- Client Secret: E.g. "\[secret\]"

- Issuer: E.g. `https://wamqa.roche.com`

- Auth endpoint: E.g. `https://wamqa.roche.com/as/authorization.oauth2`

- Token endpoint: E.g. `https://wamqa.roche.com/as/token.oauth2`

- JWKS endpoint: E.g. `https://wamqa.roche.com/pf/JWKS`

<div class="note">

The URLs mentioned above are also exposed via the api `https://wamqa.roche.com/.well-known/openid-configuration`

</div>

These details should be sufficient to get started and validate that the PingFederate authentication has been configured correctly. The request URL should then be of the form: `https://wamqa.roche.com/as/authorization.oauth2?client_id=pred-myApplication&response_type=code&scope=profile%20openid&redirect_uri=https%3A%2F%2Fdev.myapp.roche.com%2F`

## Validation of a successful PingFed Client onboarding

Validation of the onboarded PingFederate client includes a few simple steps and can help to take a decision to move the client configuration into production.

1 . Download collections and import them into Postman.

a\) For Auth Code clients:

- The [Postman Environment](../attachments/PingFedEnvironmentTemplate.postman_environment.json) needs to be configured by adding the clientId, clientSecret and redirectUrl for the onboarded client. Afterwards select the Environment from the drop-down menu in Postman on the top-right corner of the window.

- This [Postman Collection](../attachments/PingFedTest.postman_collection.json) will add two calls, one to the Userinfo endpoint and a second for Arvados. Please refer to the Documentation in the collection.

b\) For ROPC clients:

- The [Postman Environment](../attachments/PingFedEnvironmentTemplateROPC.postman_environment.json) needs to be configured by adding the clientId, clientSecret and redirectUrl for the onboarded client and username, password for the authenticating user. Afterwards select the Environment from the drop-down menu in Postman on the top-right corner of the window.

- This [Postman Collection](../attachments/PingFedTestROPC.postman_collection.json) will add three calls, one to the Userinfo endpoint, a second for the ROPC endpoint and a third to refresh the token.

c\) For "Client Credentials" clients:

- The [Postman Environment](../attachments/PingFedEnvironmentTemplate.postman_environment.json) needs to be configured by adding the clientId, clientSecret and redirectUrl for the onboarded client and username, password for the authenticating user. Afterwards select the Environment from the drop-down menu in Postman on the top-right corner of the window.

- This [Postman Collection](../attachments/PingFed_TestClientCredentials.postman_collection.json) will add three calls, one to the Userinfo endpoint, a second for the Client Credentials endpoint and a third to refresh the token.

2 . Get an Access token

Once the Enviroment is properly filled and selected, hit the `Get New Access Token` Button in the Auth Tab of the `Userinfo` request, enter the credentials and, on success, press the `Use Token` Button. This will fill the Authentication Header with a Bearer Access Token.

3 . Submit to the `Userinfo` endpoint of Ping Hit the `Send` Button to submit the call to the `Userinfo`. The response will be a `JSON` containing the claims that have been configured for the ID token and should look like this.

``` json
{
  "sub": "Roche unix user ID",
  "aud": "",
  "name": "Full Name",
  "given_name": "First Name",
  "family_name": "Last Name",
  "email": "first.last@roche|gene.com",
}
```

<figure>
<img src="../images/PostmanGetAccessToken.png" alt="PostmanGetAccessToken" />
</figure>

4 . ID and Access Token Structure

The token structures are defined in the section [token structure](guidelines:iam.xml). The token values obtained in the previous steps can be inspected on [jwt.io](https://jwt.io). Check that non of the claimes defined in the standard are missing in both your [id token](guidelines:iam.xml) and [access token](guidelines:iam.xml).

You can also decode a token with the following script to check its structure in executing \<script name.sh\> \<token\>:

``` shell
#!/bin/bash

for part in 1 2; do
  b64="$(cut -f$part -d. <<< "$1" | tr '_-' '/+')"
  len=${#b64}
  n=$((len % 4))
  if [[ 2 -eq n ]]; then
    b64="${b64}=="
  elif [[ 3 -eq n ]]; then
    b64="${b64}="
  fi
  d="$(openssl enc -base64 -d -A <<< "$b64")"
  python -mjson.tool <<< "$d"
  # don't decode further if this is an encrypted JWT (JWE)
  if [[ 1 -eq part ]] && grep '"enc":' <<< "$d" >/dev/null ; then
      exit 0
  fi
done
```

# Environment Mapping for OIDC Clients

Onboarding of new PingFed clients starts on PingFed QA (wamqa.roche.com), then continues with PingFed UA (wamua.roche.com) to finally reach PingFed PROD (wam.roche.com). Since PingFed PROD is a GxP environment this process must be followed but theoretically can be done in 1-2 weeks.

<div class="important">

To ensure proper interoperability of all applications using PingFed it is important that all applications are using PingFed PROD on all their environments, i.e. DEV, QA, TEST, PREPROD, PROD.

</div>

PingFed QA and UA should only be used in the initial onboarding or when changes on the PingFed side require testing against a dedicated PingFed environment.

<div class="important">

A PROD client should be configured to accept redirect URLs for all the environments of the application. This way a single PingFed PROD client can be used for all environments of a particular application.

</div>

<div class="note">

The same signing certificate is used for all PingFed environments. Therefore you can validate a token from wamqa with the JWKS URL from wam (as it is done on Gravitee). However, if you use the userinfo endpoint (<https://wam.roche.com/idp/userinfo.openid>) to validate the token and to retrieve additional user information, then the issuer must be the same (see also [Token Validation](#_token_validation)).

</div>

# Token Propagation Between Applications and Systems

The strength of a common standard of Token Structures (see [OIDC & OAUTH Token Guidelines](guidelines:iam.xml)) is the ability to implement seamless integration on API level in a secure way. This eliminates the need to build complex and insecure workarounds to integrate systems with different security architectures.

The diagram below illustrates the idea how systems can integrate with each other.

<figure>
<img src="../images/authentication_flowchart.png" alt="authentication flowchart" />
<figcaption>Illustration of SSO flows and Access Token Flows</figcaption>
</figure>

**Example Token Propagation Flow**

1.  The Application "Pathomation" (Pathology Image Viewer) is a PingFederate client based on our pRED token standard structure. Users of Pathomation authenticate when opening the App and PingFed generates a pair of `ID Token` and `Access Token` using the SSO flow `Authorization Code Grant Type`

2.  When Users are opening an Image (Images are managed and stored in Arvados), Pathomation is passing the `Access Token` to the Arvados S3 API. Arvados is validating the tokens and the permissions of the user and serve the requested data (see [Token Validation](#_token_validation) for more details).

# Integrating oAuth2/OIDC with PingFederate into APIs

The Basis for a successful integration of systems using PingFederate issues `Access Tokens` is:

1.  The standardized token structure

2.  How tokens are passed between systems via APIs

3.  How tokens are validated by the receiving API

## Token Forwarding

oAuth2 Access Tokens must be passed to the API clients as "Bearer" Tokens. The clients calling the APIs are bearers of the identity of a user for the request made. Users delegate the handling of their identity to the client.

The standard way of submitting Access Tokens is via the `Authorization` header. This is the default and should ab assumed by every API implementation as well as by every API integration.

<div class="formalpara-title">

**Request Header for Token Forwarding**

</div>

    Authorization: Bearer <Access Token>

    e.g.
    Authorization: Bearer eyJhxxx.eyJzY29wZSI6Inxxx.t6qT8fRw5noxxx

<div class="important">

APIs can decide to read the Token from a different Header. This should be avoided or clearly documented.

</div>

## Token Validation

<div class="important">

**Tokens must always be validated**. Access Tokens are issued as JWTs (see [jwt.io](https://jwt.io) for details), these JWTs can be decoded and interpreted easily. However the payload of a JWT can also be changed as easily (e.g. changing the expiration date or the user ID). Therefore proper validation is required.

</div>

The basics of token validation start with the assumption that tokens are consumed by a different client than the client a token was issued to. In the simple scenario shown in the figure below there are three parties:

1.  Ping Federate (IDP = Identity Provider) - Issuing and Validating Tokens

2.  Application A - The Application which obtains the tokens through a SSO flow

3.  API Application B - An API which accepts Access Tokens as authentication

<figure>
<img src="../images/token_validation_basic.png" alt="token validation basic" />
<figcaption>Token Request and Verification Flow</figcaption>
</figure>

The API in Application B **MUST** always validate the tokens incoming from Application A. This is done by **validating the signature** and by **validating the payload**.

### Validate the Signature

Validating the signature guarantees the integrity of the token. If the signature validation succeeds the receiving API can be sure that the token has not been changed.

There are two different approaches to validating the signature.

### Offline using JWKs and the token signature

[jwt.io](https://jwt.io) maintains a curated list of libraries for various languages and frameworks which provide convenient functions to interact with oAuth2/OIDC IDPs and also implement the validation of signatures.

Access Tokens issued by PingFederate are signed with a JWK that is accessible from this URL.

<div class="formalpara-title">

**JWKS (JSON Web Key Sets) for the Signature Verification of Access Tokens**

</div>

    https://wam.roche.com/pf/JWKS

<div class="note">

When PingFed was introduced at pRED at the beginning of the OneD program we had to introduce the validation endpoint <https://wam.roche.com/ext/OneD/JWT> which is different from the default endpoint <https://wam.roche.com/pf/JWKS>. This was due to some limitations in an earlier PingFed version. While this was and is working fine for integrating pRED applications and APIs amongst each other, it fell short when we needed to integrate with other non-pRED applications which is important in the context of R&D Excellence. Since April 2025 a solution to this problem is available. pRED tokens can now be validated against <https://wam.roche.com/pf/JWKS>. With this pRED tokens can also be sent to systems outside pRED. But if systems outside pRED should consume a pRED API, then the API owner needs to change the JWKS URL in Gravitee to <https://wam.roche.com/pf/JWKS>. Since <https://wam.roche.com/ext/OneD/JWT> should be decommissioned at some point this change will be eventually needed for each API but can be gradually implemented.

</div>

<div class="formalpara-title">

**Python Token Signature Validation Example (Using pyjwt with the )**

</div>

``` python
# Install pyjwt with crypto extension
$ pip install pyjwt[crypto]

# validate.py
import jwt
from jwt import PyJWKClient

token = "<ACCESS TOKEN>"
kid = "fedcert"
jwks_url = "https://wam.roche.com/pf/JWKS"
jwks_client = PyJWKClient(jwks_url)
signing_key = jwks_client.get_signing_key_from_jwt(token)

data = jwt.decode(
    token,
    signing_key.key,
    algorithms=["RS256"],
    options={
        "verify_exp": True,
        "verify_aud": False
        },
)
```

### Online using Ping Federate APIs

The offline validation has the huge benefit of performance. No API call is required to the IDP and no risk of overloading the IDP APIs exists However, sometimes it can be a simple alternative to just let PingFederate do the validation. One way to do this is to send the Access Token to the `userinfo` endpoint which, on successful validation, returns the payload of the `ID Token`

<div class="formalpara-title">

**Example Request to the Userinfo Endpoint**

</div>

    GET /idp/userinfo.openid HTTP/1.1
    Host: wam.roche.com
    Authorization: Bearer <ACCESS TOKEN>

If the token is valid this API will return `HTTP Status 200` and a JSON object with the payload of the `ID Token`. If the token is invalid, the reponse will be `HTTP Status 401`.

### Validate the Payload

Once the token signature is validated, only a few final checks are required. First the payload needs to be decoded. Again, great instructions as well as libraries to do this are available on [jwt.io](https://jwt.io/).

<div class="important">

The `exp` claim must always be validated

</div>

Which claims need to be validated mostly depends on the API and the Authorization Strategy there. Usually what is needed is either the presence of a user id, stored in the `sub` claim or the Email stored in the `email` claim.

<div class="note">

If the API will not do any authorization based on a users identity, checking the `email` or `sub` claim can be omitted.

</div>

## Exchange of an Access Token

There might be cases when a token created for one client needs to be exchanged to a token for another client. One example is that when a user logs on to the pRED Cockpit application and gets a token with client_id "pred-cockpit". A widget (e.g. from ESAAC) in the Cockpit however uses another client_id when communicating with some APIs. In that case the widget needs to exchange the pred-cockpit token into one with client_id "esaac-soda" as shown below. While there could be different ways how to do that, the best option without additional implementation effort is to provide an API endpoint on Gravitee that exchanges the "pred-cockpit" token for an "esaac-soda" token. This API needs to be owned by the "esaac-soda" team as the clientSecret of the "esaac-soda" PingFed client is used for the token exchange. The token exchange can be simply achieved by adding an "HttpCallout" policy and no code is needed in the backend. Similarly, other token exchange API endpoints from other applications would be needed in case their widgets have the same requirements. Exchanging the token directly from the front-end is NOT recommended as otherwise the clientSecret would be exposed.

<figure>
<img src="../images/Token-exchange.png" alt="Token exchange" />
<figcaption>Illustration of a token exchange</figcaption>
</figure>

<div class="important">

As a prerequisite the target client needs to be configured for token exchange by the PingFed team. It also requires that the source and target token share the same token structure. Clients that should be used for token exchange need to be secured by a client_secret.

</div>

<div class="important">

When you create the ticket for the PingFed team (see [Client Onboarding](knowledge_base:it_security_authentication.xml#_client_onboarding)), please add the comment "**activate the Token exchange grant at the oauth client and assign the processor policy PRED-TP-Policy to it**" (see also [Pingfederate pRED Token Exchange](https://docs.google.com/document/d/1sL1gB4k-UkGdPvzag50LVRRFBV3Rw9AFBCOI4YdJHBg/edit)).

</div>

The below request turns a source token into a target token:

``` sh
curl -X POST https://wam.roche.com/as/token.oauth2 \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -H "Authorization: BASIC <base 64-encoding of clientID:clientSecret of the target client>" \
     -d "grant_type=urn:ietf:params:oauth:grant-type:token-exchange" \
     -d "subject_token=SOURCE_ACCESS_TOKEN" \
     -d "resource=https://predtokenexchange" \
     -d "subject_token_type=urn:ietf:params:oauth:token-type:jwt" \
     -d "scope=profile openid" \
```

The response is:

``` json
{
    "access_token": "eyJh...",
    "issued_token_type": "urn:ietf:params:oauth:token-type:access_token",
    "token_type": "Bearer",
    "expires_in": 7199
}
```

This [Postman Environment](../attachments/pRED_Token_exchange.postman_collection.json) needs to be configured by adding the clientId and clientSecret of the new client (esaac-soda in the previous example).

Token exchange has been implemented e.g. for DELTNICE. See [here](https://delt.pages.roche.com/delt-nice-onedoc/DEVELOPMENT/auth-pingfed.html) for further documentation.

# Coding examples

- Python sample code for [Authorization Code Grant Type](https://code.roche.com/pred-arch/iam/-/blob/main/oAuth2-AuthCodeGrant.py)

- AngularJS Typescript Sample Project [implementing Authorization Code Grant Type with PKCE and calling the Arvados API](https://code.roche.com/pred-arch/iam-examples/ng-ping)

- Python code for [Device Auth Grant](https://code.roche.com/pred-arch/device-auth-cli/-/blob/main/main.py)

- Python code written by the CADD team to connect to [D360 API](https://code.roche.com/cadd/d360_utilities/-/blob/master/d360_get_query.py)

- Python code written by PMDA [Streamlit and PingFed](https://code.roche.com/PMDA/pred-bioinformatics/spatialomics/qc/streamlit-ui/-/blob/main/src/auth/oauth.py?ref_type=heads)

- See also the developer guides in the appendix.

# API consumption and authentication for data scientists

Data scientists need to call various APIs and are often struggling with authentication when it comes to APIs protected by PingFederate. There is a new endpoint (/v2.1/users/accesstoken) of the [pREDiLogin API](https://api.core.minerva.roche.com/catalog/api/0c6353d6-8cac-4e32-a353-d68cacce3235/doc?page=7b613c97-9890-4121-a13c-979890c12145) that allows users to generate a PingFed token with the client_id "pred-generic". This simplifies the process for data scientists to access APIs in their scripts and avoids the need to request their own PingFed client or to fetch a token from the browser. It’s important to note that this functionality is **not intended for applications** which still must use their own dedicated PingFed client.

A Gravitee application connected with the client_id "pred-generic" exists and subscribed several PingFed protected APIs which can be called with a corresponding jwt access token. If you want to check whether an API can be called with a "pred-generic" token, you can simply test it or ask the API owner.

It is important to know that you still need your own [Gravitee application](https://gravitee.pages.roche.com/documentation/gravitee/API%20consumer/010_introduction.html) in order to subscribe to other APIs protected by an API-key which is also the case for calling the pREDiLogin API. Please be also aware that you are not directly subscribed to the above listed APIs and won’t be informed by the API owners about any (e.g. breaking) changes. You can mitigate this by adding a dummy client_id to your Gravitee application and then subscribe to the API. The API owners are then aware of your subscription although no traffic can be observed related to your dummy client_id.

To API owners: While this approach aims to benefit data scientists, it reduces visibility into individual API consumers. The aforementioned workaround using a dummy client_id can help to keep the overview. If a user asks you to get access to your API with the client_id “pred-generic”, please reach out to <christian.blumenroehr@roche.com> or <moritz.gilsdorf@roche.com>. Please be aware that such a subscription assumes that authorization based on the user’s identity in the jwt token is implemented in your API. And of course in case your API is not yet on Gravitee, please [publish](https://gravitee.pages.roche.com/documentation/gravitee/API%20publisher/010_introduction.html) it.

# Appendix

## Resources from GIS

| Link                                                                                                                                                                | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Roche IAM Services and Reference Architectures](https://docs.google.com/presentation/d/1sSfT4xbOlP6nmaSreFVBZxoHTJeDLBuS87Fx12QDkQY/edit#slide=id.g89857fe113_0_0) | GIS - Final proposal -Core working group members: Jing Zhang-Lee (Enterprise Architect for IAM), Carl Koster (Enterprise Architect for Security), Sini Sam Mathew (Integrated Service Owner for IAM), Gary Rowe (TechVision Research, Founder and Principal Analyst), and Doug Simmons (TechVision Research, Principal Analyst for IAM) Contributors: IS leadership team, GIS IS secure access engineering teams, secure access services teams, enterprise architecture team and more |
| [IAM Developer Guide for EDIS / PHC](https://docs.google.com/document/d/1BGVA_HqhaadnqApoCGmfvZ2zhRDsr6ubNjzbM3B30B8/edit)                                          | As title says                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [Developer Guide for OAuth Integration](https://docs.google.com/document/d/1B7OLRy5HqacrkEWnrdzeL1QLWVzHMli3zAOsvR5yo04/edit)                                       | As title says                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [Related documents](https://drive.google.com/drive/folders/1KPCZfnHe3OoTIcOTatF-i4Ur8x3caP9c)                                                                       | Folder on shared gDrive                                                                                                                                                                                                                                                                                                                                                                                                                                                               |

## Other resources

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 80%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Link</th>
<th style="text-align: left;">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p><a href="https://docs.google.com/presentation/d/13453AlotJXCX_zMFmTMEc5pEGWvgyCMIPTqS6C95sx0/edit#slide=id.SLIDES_API1428684673_22">pRED IAM Guidelines</a></p></td>
<td style="text-align: left;"><p>Slidedeck describing the oAuth2/OIDC standard defined for EDIS adapted to the pRED and OneD needs.</p>
<p>Includes onboarding instructions</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p><a href="https://code.roche.com/dev-coe/java/oauth2/roche-oauth2-spring">Implementation Example - oAuth2 and OpenID with Spring Framework</a></p></td>
<td style="text-align: left;"><p>Example Implementation of OpenID on top of oAuth2 using Roche PingFederate.</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p><a href="https://docs.pingidentity.com/pingoneaic/latest/am-oauth2/oauth2-implementing-flows.html">Documentation</a> from PingIdentity - vendor of PingFederate</p></td>
<td style="text-align: left;"><p>Includes specific examples for different OAuth 2.0 grant flows.</p></td>
</tr>
</tbody>
</table>

---

<div class="important">

This article is still a work in progress and will be updated to provide a holistic view of the CS CoE.

</div>

The below APIs are exposed on Gravitee. Make sure you have the API consumer role as described [here](https://minerva.pages.roche.com/api-platform/documentation/gravitee/API%20consumer/010_introduction.html).

# RedPanda API for project data access management

Our data in pRED have many facets: they can be associated to portfolio projects, studies, compounds, assays, reactions, etc., each of which might have its own access needs. To implement an authorization management solution that considers all these levels will take its time. In several OneD projects however one aspect is of general importance and needs to be addressed now: **how to manage access to the data belonging to a specific portfolio project?**

RedPanda exposes an API on Gravitee

- [RedPanda REST API](https://api.core.minerva.roche.com/catalog/api/a8c16ba0-12c2-4fb9-816b-a012c23fb965)

<div class="important">

This API only provides the access management information which users should in general have access to project data. Consuming applications need to apply it! The consuming applications also need to decide which project data should be exposed and they also need to decide whether all users should be able to consume the same data or whether some application-specific roles apply, e.g. for ExBP users.

</div>

# pREDiLogin API

If you are using Active Directory groups to define access to your application you will need to check the membership of a user in some or several AD groups. This can be done with the pREDiLogin API. This API is available on Gravitee:

- [pREDiLogin API](https://api.core.minerva.roche.com/catalog/api/0c6353d6-8cac-4e32-a353-d68cacce3235)

# IAM Proxy API

This service integrates responses from RedPanda + pREDiLogin (AD lookup) APIs into a single OIDC Rest Endpoint. You can get AD group memberships (based on a prefix or by specific groups) and projects IDs from the same REST endpoint. To authenticate against the service you need to send the access token. Important: this API only provides the access management information. Consuming applications need to apply it.

API on Gravitee:

- [API using RedPanda PROD, pREDiLogin PROD and PingFed PROD](https://api.core.minerva.roche.com/catalog/api/16ddfd50-c08e-4d10-9dfd-50c08e3d1047)

# CIDM Group Management API

An alternative to the pREDiLogin API is the CIDM Group Management API which is [exposed on Mulesoft](https://anypoint.mulesoft.com/exchange/140fb0bb-4408-4224-b57c-c0852bab7f37/gis-cidm-groupmanagement-exp-api/minor/1.0/console/). This API is in parts limited compared to the pREDiLogin API but in other parts it has additional functionalities.

- same functionalities:

  - searching of groups

  - check the members of an Active Directory or CIDM group

    - It is still to be checked whether the API also supports nested groups as the pREDiLogin API does.

- missing functionalities compared to pREDiLogin API:

  - searching of users

  - retrieving user details

  - checking of group memberships for several groups and users

  - caching for high performance

  - checking credentials of users

- additional functionalities compared to pREDiLogin API:

  - group management:

    - create, delete groups

    - add, delete users

    - manage allowed senders

# CIDM application integration

The CIDM team (contact <von-schwerin.chahir@gene.com>) offers custom application integrations. This is especially useful, when 3rd party applications need to be integrated which allow user and role management via APIs in order to prevent that user and role management either needs to be performed manually or is done by potentially expensive custom implementations of the external vendors.

The CIDM team can implement the integration with those APIs as part of the user on- and off-boarding processes as it is shown below for the example of Laboperator. Please note that authentication still should be implemented using Roche SSO (PingFederate).

<figure>
<img src="../images/CIDM-application-integration.png" alt="CIDM application integration" />
<figcaption>CIDM application integration for Laboperator</figcaption>
</figure>

# Auto-filled AD/CIDM groups for access management

We have several AD groups which are all starting with GLOpAppAuth\_ and which are using AD filters to be populated automatically. These groups reflect organisations and can be used for access management.

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>Name of AD group</p></td>
<td style="text-align: left;"><p>AD filter</p></td>
<td style="text-align: left;"><p>Description</p></td>
<td style="text-align: left;"><p>Sub groups</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_pRED_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_pRED_Internals_All</p></li>
<li><p>GLOpAppAuth_pRED_Contractors_All</p></li>
<li><p>GLOpAppAuth_pRED_Trainees</p></li>
<li><p>GLOpAppAuth_pRED_Technical</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_pRED_Internals_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=P*)(cn=bonnia)
  (&amp;(|(department=GT*)(department=GS*))(|(c=CH)(c=DE)(c=GB))))
  (!(department=People*))
  (company=*Roche*)
  (division=Pharmaceuticals)
  (employeeType=internal)
  (!(l=SHANGHAI))(!(gneCostCenterName=*CICoR*))
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>with a department starting with "P" (plus Azad Bonni as pRED head)</p></li>
<li><p>and who have either an department starting with "GT" or "GS" and who are in Switzwerland, Germany or UK (this is to still include the users from legacy D&amp;A)</p></li>
<li><p>but who are not in CICoR</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_pRED_Contractors_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(­|(department=P*)
  (&amp;(|(department=GT*)(department=GS*))(|(c=CH)(c=DE)(c=GB))))
  (!(department=People*))
  (company=*Roche*)
  (division=Pharmaceuticals)
  (employeeType=contractor)
  (!(l=SHANGHAI))(!(gneCostCenterName=*CICoR*))
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All external users</p>
<ul>
<li><p>with a department starting with "P"</p></li>
<li><p>and who have either an department starting with "GT" or "GS" and who are in Switzwerland, Germany or UK (this is to still include the users from legacy D&amp;A)</p></li>
<li><p>but who are not in CICoR</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_pRED_Trainees</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(department=HBI*)(l=BASEL)
  (|(buildingName=065)
     (buildingName=068)
     (buildingName=069)
     (buildingName=070)
     (buildingName=007)
     (buildingName=006)
     (buildingName=005)
     (buildingName=090))
  (|(division=Others)(division=Pharmaceuticals))
  (employeeType=internal)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>from department starting with HBI</p></li>
<li><p>who are in BASEL</p></li>
<li><p>and who are in one of the listed buildings</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_pRED_Technical</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_pRED_BDS</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>BDS Access</p></li>
<li><p>GLOBDS_USER_GENERIC</p></li>
<li><p>GLOpAppAuth_CICoR_All</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CSCoE_Internals_All</p></li>
<li><p>GLOpAppAuth_CSCoE_Contractors_All</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_Internals_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CSCoE_EMEA_Internals_All</p></li>
<li><p>GLOpAppAuth_CSCoE_NALA_Internals_All</p></li>
<li><p>GLOpAppAuth_CSCoE_ASIA_Internals_All</p></li>
<li><p>marionij</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_Contractors_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CSCoE_EMEA_Contractors_All</p></li>
<li><p>GLOpAppAuth_CSCoE_NALA_Contractors_All *GLOpAppAuth_CSCoE_ASIA_Contractors_All</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_EMEA_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CSCoE_EMEA_Internals_All</p></li>
<li><p>GLOpAppAuth_CSCoE_EMEA_Contractors_All</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_EMEA_Internals_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=GT*)(department=GS*))
  (|(c=CH)(c=DE)(c=GB))
  (division=Pharmaceuticals)
  (employeeType=internal)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>in a department starting with GT or GS</p></li>
<li><p>in Switzerland, Germany or the UK</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_EMEA_Contractors_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=GT*)(department=GS*))
  (|(c=CH)(c=DE)(c=GB))
  (division=Pharmaceuticals)
  (employeeType=contractor)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All external users</p>
<ul>
<li><p>in a department starting with GT or GS</p></li>
<li><p>in Switzerland, Germany or the UK</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_NALA_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CSCoE_NALA_Internals_All</p></li>
<li><p>GLOpAppAuth_CSCoE_NALA_Contractors_All</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_NALA_Internals_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=GT*)(department=GS*))
  (|(c=US)(c=CA))
  (division=Pharmaceuticals)
  (employeeType=internal)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>in a department starting with GT or GS</p></li>
<li><p>in the US or Canada</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_NALA_Contractors_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=GT*)(department=GS*))
  (|(c=US)(c=CA))
  (division=Pharmaceuticals)
  (employeeType=contractor)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All external users</p>
<ul>
<li><p>in a department starting with GT or GS</p></li>
<li><p>in the US or Canada</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_ASIA_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CSCoE_ASIA_Internals_All</p></li>
<li><p>GLOpAppAuth_CSCoE_ASIA_Contractors_All</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_ASIA_Internals_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=GT*)(department=GS*))
  (|(c=CN))
  (division=Pharmaceuticals)
  (employeeType=internal)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>in a department starting with GT or GS</p></li>
<li><p>in China</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CSCoE_ASIA_Contractors_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;(|(department=GT*)(department=GS*))
  (|(c=CN))
  (division=Pharmaceuticals)
  (employeeType=contractor)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All external users</p>
<ul>
<li><p>in a department starting with GT or GS</p></li>
<li><p>in China</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_gRED_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_gRED_Internals_All</p></li>
<li><p>GLOpAppAuth_gRED_Internals_All</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_gRED_Internals_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;((department=G*)
  (company=Genentech*)
  (employeeType=internal)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>in a department starting with G</p></li>
<li><p>in a company starting with Genentech (this currently excludes the legacy D&amp;A team)</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_gRED_Contractors_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(&amp;((department=G*)
  (company=Genentech*)
  (employeeType=contractor)
  (rocheIsPrimaryUserID=TRUE)
  (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All external users</p>
<ul>
<li><p>in a department starting with G</p></li>
<li><p>in a company starting with Genentech (this currently excludes the legacy D&amp;A team)</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CICoR_All</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><p>-</p></td>
<td style="text-align: left;"><ul>
<li><p>GLOpAppAuth_CICoR_Internals_All</p></li>
<li><p>GLOpAppAuth_CICoR_Contractors_All</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>GLOpAppAuth_CICoR_Internals_All</p></td>
<td style="text-align: left;"><pre class="text"><code>(|(cn=shenh8)
  (&amp;((company=Roche R&amp;D Center (China)*))
    (division=Pharmaceuticals)
    (department=PB*)
    (employeeType=internal)
    (rocheIsPrimaryUserID=TRUE)))
    (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All internal users</p>
<ul>
<li><p>in a department starting with PB</p></li>
<li><p>in a company starting with Roche R&amp;D Center (China)</p></li>
<li><p>plus Hong Shen (head of CICoR)</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>GLOpAppAuth_CICoR_Contractors_All</p></td>
<td style="text-align: left;"><pre class="text"><code>((&amp;((company=Roche R&amp;D Center (China)*))
    (division=Pharmaceuticals)
    (department=PB*)
    (employeeType=contractor)
    (rocheIsPrimaryUserID=TRUE)))
    (!(UserAccountControl:1.2.840.113556.1.4.803:=2))
)</code></pre></td>
<td style="text-align: left;"><p>All external users</p>
<ul>
<li><p>in a department starting with PB</p></li>
<li><p>in a company starting with Roche R&amp;D Center (China)</p></li>
</ul></td>
<td style="text-align: left;"><p>-</p></td>
</tr>
</tbody>
</table>

---

# What is a certificate

Security certificates are a fundamental component of internet security, enabling safe and secure communication between clients (e.g. user) and servers (e.g. website). By providing encryption, authentication, and data integrity, they help protect sensitive information and build trust in online interactions.

# Certificates in pRED CS-CoE

This documentation outlines the processes for managing and ordering certificates.  
There are several approaches available for handling certificates, each with its own advantages and disadvantages. If you need a certificate, please contact the Solution Engineering and Infrastructure capability circle (see the list of responsible personnel below). We can help identify the best option for your needs and address any potential issues that may arise.

# Certificate types

There are different types of certificate which will be used in the pRED CS-CoE space:

- **Server Certificates**  
  Server certificates are used to authenticate the identity of a server and enables an encrypted connection. When installed on a website, an SSL certificate enables the visitor to use the protocol HTTPS on the said website. It also installs indicators that vouch for the authenticity of the website to a certain extend.

- **Client Certificates**  
  A client certificate can be defined as a digital certificate used to authenticate the identity of the requester to a remote server. A client certificate ensures the server that it is communicating with a legitimate user. E.g. Proxify access

- **Device Certificates**  
  Device certificates are out of scope, as all hardware related thnigs is handled by Group Informatics.

# Common Issues

Certificates could be ordered in different ways (see below). A certificate normally expires after a timeframe of 2-3 years. Before the expiration, the person (as well as the deputy) who ordered the certificate, will get a notification. Here are the following 2 issues:

- The person who ordered the certificate is no longer available

- It is not known, how and where the certificate is used.

Therefore when it comes to certificate management, a solution for the above described issues should be available to avoid future problems in case of certificate expiration.

- Responsibility of a certificate should not be related to single person rather than a team

- A certificate is always used for a specific purpose/system. This should be documented.

# Order Certificate

There are several ways how certificates could be issued in the Roche environment.  
Before ordering a new certificate, please check back with the people (see below) from the Solution Engineering and Infrastructure capability circle to find the best way for your certificate needs. There might be an already an established way which will make it easier to manage and maintain certificates.  
IMPORTANT: The person who orders the certificate, needs to track/maintain that certificate.  
Here are the most common ways:

- **ProTools** (preferred way for client certificates)  
  <https://emea.leap.roche.com/LCA_GLOB_MuleUtils/>  
  ProTools offers some basic features to easily manage certificates. Nevertheless, some other important things, e.g. usage of the certificate, team responsibility, is missing.

<figure>
<img src="../images/certificates/protools-cert-2.png" alt="protools cert 2" />
</figure>

<figure>
<img src="../images/certificates/protools-cert-1.png" alt="protools cert 1" />
</figure>

- **iCare**  
  A certificate could be ordered with or without CSR  
  <https://roche.service-now.com/icare?id=sc_cat_item&sys_id=98349b49877d99d0332aa9f30cbb35c4>  
  Approval is needed from ServiceNow Business Service Owner and/or Line Manager. If you need to generate certificates via iCare, you are need to manually track their expiry date and the area where they are used. You should create a table in your technical documentation with at least the name, expiry date, link to the place of usage and a link to the private key of the certificate. The private key of the certificate should have the access limited to your Dev team members for example.

# KeyFactor API

The Keyfactor Command solution exposes an API to allow third-party software to integrate with the advanced certificate enrollment and management features of Keyfactor Command in a secure manner and to provide a mechanism for automating routine or bulk tasks that would be cumbersome to perform through the browser-based user interface. The most important feature is the support of common certificate enrollment and management tasks.  
This API is used by the SciComp team to manage certificates for in their responsibility.  
A technical account is needed to access the KeyFactor API. This technical account is accessible to a subset of people (SciComp) team.  
A similar approach is under discussion in the Solution Engineering and Infrastructure circle.

## Creating a certificate

A new certificate could easily request with KeyFactor:

<figure>
<img src="../images/certificates/keyfactor-cert-1.png" alt="keyfactor cert 1" />
</figure>

The purpuse of the certificate (usage) could be stored as metadata  

A **technical account** is needed to access KeyFactor API. In the interest of security, this technical account is only available to a subset of people. The KeyFactor API will (probably) not allow to give all CS-CoE people access to KeyFactor API.

## Receiving information about a certificate

KeyFactor API could also be used to receive all certificates which have been created with KeyFactor API by a specific account.

<figure>
<img src="../images/certificates/keyfactor-cert-2.png" alt="keyfactor cert 2" />
</figure>

This functionality could then be used to get a list of all certificates, filter out all certificates which expires soon, get the main purpose and have an easy way to renew certificates.

## Using KeyFactor API to create Client Certificates

A substantial amount of resources is needed to setup a simple web form, which could be used by CS-CoE people to request new certificates.  
Client Certificates in CS-CoE space are mainly used to access proxify.  
In proxify we currently have 27 API’s.

<figure>
<img src="../images/certificates/proxify-cert-1.png" alt="proxify cert 1" />
</figure>

In addition to that, if a group outside pRED CS-CoE wants to access an API, this group needs to request a certifcate by themselve.  
The problem in general should be solved across Roche, not as a single solution in CS-CoE:  
<https://docs.google.com/presentation/d/1z33MwpaYR2v6OgcqvCnUHSVSON8TxNnxn298zN4IC1U/edit?usp=sharing>

## Documentation

Online: <https://software.keyfactor.com/Core-OnPrem/Current/Content/WebAPI/KeyfactorAPI/EnrollmentPOSTCSR.htm>  
PDF: <https://drive.google.com/file/d/13dBhruFyQGcHMQtmurh8T44MKb3neCk2/view>

# Certificate Tracking

If you have ordered a certificate by yourself, there is a possibility to add some information about this certificate in a shared GSheet. This allows others to deal with that certificate in case one of the issues described above will occure.  
<https://docs.google.com/spreadsheets/d/18rvqI9X_9FgPfUn4JBGFdDxxrkyyyxujs6-Q9rEUStU/edit?usp=sharing>

# Common Operations

## Create CSR (Certificate Signing Request)

``` sh
openssl req -newkey rsa:4096 -keyout PRIVATEKEY.key -out MYCSR.csr
```

TODO: WHAT HAPPENS WITH THE PRIVATEKEY?  
TODO: COMMON NAME?

### Common values

``` sh
Certificate Organizational Unit (OU): pRED
Certificate Organization (O): F.Hoffmann-La Roche AG
Certificate Location (L): Basel
Certificate State (ST): Basel-Stadt
Certificate Country (C): CH
```

## Convert Certificates

Certificates could be delivered in the following format:

- **PEM**  
  PEM, which stands for privacy-enhanced mail, is the most popular container format used by certificate authorities (CAs) to issue SSL certificates.

- **P12/PFX**  
  The P12/PFX format is the binary format that stores the server certificate, the intermediate certificate and the private key in a single password-protected pfx or p12 file.

- **P7B**  
  Certificates in P7B formats are encoded in Base64 ASCII encoding. The thing that separates P7B formatted certificates is that only certificates can be stored in this format, not private keys. In other words, a P7B file will only consist of certificates and chain certificates.

# ACME Service

The Automatic Certificate Management Environment (ACME) protocol is a communications protocol for automating interactions between certificate authorities and their users' servers, allowing the automated deployment of public key infrastructure. ACME allows to automate the servers certificate request and renewal.

## Request ACME credentials

You can request your onboarding via a [Generic Request - PKI-Digital certificate Consultancy](https://roche.service-now.com/icare?id=sc_cat_item&sys_id=9a95f9ec874192904f9432a90cbb350b) asking for onboarding to the ACME service. Once the onboarding is approved you will receive credentials for the TEST environment. You can use these to test that the ACME integration of your servers is working as expected before requesting the PRODUCTION credentials. The following section introduces how to configure Certbot on a Linux server to automatically request and renew certificates.

## Installing Certbot

[Certbot](https://certbot.eff.org/) is a free, open source software tool for automatically using Let’s Encrypt certificates on manually-administrated websites to enable HTTPS.

You can install `certbot` in your server with the following commands:

<div class="formalpara-title">

**Install certbot**

</div>

``` bash
python3 -mvenv /opt/certbot
source activate /opt/certbot
pip install --upgrade pip
pip install certbot
```

Once you have certbot installed you can register your client with the provided credentials. In order to simplify the commands it is recommended to create a configuration file with some common configuration options. Create the file `/etc/letsencrypt/cli.ini` with the following content:

<div class="formalpara-title">

**/etc/letsencrypt/cli.ini**

</div>

``` ini
key-type = rsa
rsa-key-size = 2048

# For TEST use this server:
# server = https://g3tstacme.rochetest.com/ACME/
# For PRODUCTION use this server:
server = https://g3acme.roche.com/ACME/
```

Register the certbot client with the provided credentials:

<div class="formalpara-title">

**Register certbot**

</div>

``` bash
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-bundle.trust.crt
certbot register --standalone --eab-kid EAB-KID --eab-hmac-key EAB-HMAC-KEY
```

Now you can proceed to request the certificates for your server. In this example we will request a simple certificate. If you need multiple domains in your certificate you can add them to the `-d` parameter separated by comma (`,`).

<div class="formalpara-title">

**Request certificate**

</div>

``` bash
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-bundle.trust.crt
certbot certonly -d "rkalvneoprd.kau.roche.com"
```

The certificate creation will ask for an email address. You should provide a group distribution list. This email will be used for notifications about service maintenances and disruptions.

Once the certificates are created they will be stored in `/etc/letsencrypt/live/DOMAIN/`. There you will find 4 files:

- privkey.pem (Private key)

- fullchain.pem

- chain.pem

- cert.pem (Certificate)

It is recommended that you point your application to these files (`privkey.pem` and `cert.pem`) without moving/copying them as they will be automatically replaced when the certificate is renewed.

## Configure certificate renewal

Certificate renewal can be configured in Linux using cron. You can create a new file in `/etc/cron.d/certbot` with the following content. Your certificates will be renewed once they are close to the expiration date (30 days before expiration).

<div class="formalpara-title">

**/etc/cron.d/certbot**

</div>

    # Renew Certificate
    SHELL=/bin/bash
    0 0,12 * * * root sleep $[RANDOM\%10]m && /opt/certbot/bin/certbot renew

# Additional information

For any support regarding certificates, please contact:

**Server Certificates**:

- Bettina Crippa (<bettina.crippa@roche.com>)

- Carlos Fenoy (<carlos.fenoy@roche.com>)

**Client Certificates**:

- David Herzig (<david.herzig@roche.com>)

---

# Introduction

The CS CoE has 50 licenses of the JetBrains [All Products Pack](https://www.jetbrains.com/all/) allowing the use of the wide variety of JetBrains IDEs in their Professional Editions by colleagues.

# Terms of use

**Who can use the licenses?**

The licenses are intended for all members of the CS CoE Department and contractors working directly with CS CoE colleagues. Colleagues working for other departments or contractors hired through other departments are not allowed to use these licenses.

**Be a Good Citizen**

The licenses are floating. Only running IDEs are consuming a license seat. Therefore please…

- Close IDEs when they are not used to free up license seats

- Avoid opening several IDEs with the license server (don’t block multiple licenses)

- Consider using the community editions of the IDEs. Maybe the professional features are not needed for you

# How to activate the IDE

Follow the follow instructions:

- Visit our JetBrains [IDE Services](https://roche-cscoe.jetbrains-ide-services.com/) instance:

- Install the JetBrains Toolbox App (if not already installed)

- Sign in using your Roche credentials

- Click 'Join Roche CS COE'

<div class="important">

If you are a Windows user and encounter issues installing or configuring the JetBrains Toolbox, you can manually activate your IDE by following these steps:

</div>

- Open your JetBrains IDE.

- If you do not yet have a license, the activation dialog will appear automatically. If it does not, go to Help \> Register to open it.

- If the IDE is already activated, select Activate Another License.

- In the activation dialog, choose Paid license \> License server.

- Enter the following URL in the Server address field: `https://roche-cscoe.jetbrains-ide-services.com/`

- Click Activate.

For more detailed instructions, please refer to the official JetBrains [documentation](https://www.jetbrains.com/help/ide-services/Activating_a_license.html#to-activate-a-license).

---

Low-code/no-code development platforms are types of visual software development environments that allow enterprise developers and citizen developers to drag and drop application components, connect them together, and create mobile or web apps. These platforms are often discussed synonymous with the development methods they embody.

Low-code and no-code modular approaches let professional developers quickly build applications by relieving them of the need to write code line by line. They also enable business analysts, office administrators, small-business owners, and others who are not software developers to build and test applications. These people can create applications with little to no knowledge of traditional programming languages, machine code, or the development work behind the platform’s configurable components.

In a nutshell low-code platforms promise to enable non-technical people to build applications and to accelerate development.

# Overview of Available Platforms at Roche

There are many low-code platforms available—both on the market and within Roche—each with different strengths and limitations. Choosing the right platform should be driven by the product’s specific business requirements and the budget available for development and ongoing support. It’s also important to consider the expected delivery model: whether the solution can be built by citizen developers or requires a certified development team. Certified teams bring the experience needed to implement robust integrations and ensure alignment with Roche standards.

For guidance, the [Roche Automation & Rapid Application Development](https://sites.google.com/roche.com/a-rad/home) team provides a dedicated overview of supported low-code platforms to help accelerate application delivery.

<div class="important">

All the Global Informatics offerings are valid and different requirements mean different decisions. All major platforms require certified developers to access the platforms.

</div>

# Recommended Platforms

To support a consistent, scalable, and compliant digital toolset, the following three applications as preferred options, each aligned to a specific use case:

1.  The [pRED APEX Platform](https://go.roche.com/apex) is the preferred low-code development environment for data-driven applications in pRED. It enables rapid development of secure, database-centric solutions and is well suited for building internal apps that rely on structured data, workflows, and reporting. Standardizing on Oracle APEX also reduces fragmentation across ad-hoc tooling and improves maintainability through a common platform.

2.  [Monday.com](https://www.monday.com/) should be the recommended tool for self-service project and work management, with the goal of consolidating overlapping tools into one enterprise solution. It provides a flexible and user-friendly environment for planning, tracking, and collaborating across teams—while supporting governance through a standardized platform approach. This recommendation also aligns with the stated intent to replace or reduce parallel usage of tools such as Smartsheet, MS Project, Asana, and other unsupported third-party solutions.

3.  [LEAP / Outsystems](https://sites.google.com/roche.com/a-rad/our-technologies/leap) is positioned as the preferred Roche Digital Technology platform for enterprise-grade application development. It supports faster delivery while maintaining stronger architectural patterns for larger solutions, and it is positioned as a preferred Roche Digital Technology platform.

<div class="important">

Together, these three recommendations create a clear “right tool for the job” standard: APEX for data-driven apps in pRED, Monday.com for work/project management, and LEAP/Outsystems for enterprise low-code applications—helping reduce tool sprawl, improve supportability, and strengthen governance.

</div>

# Roche Informatics Positioning

- [Roche "Automation & Rapid Application Development" Team gSite](https://sites.google.com/roche.com/a-rad/home)

- [Roche "Automation & Rapid Application Development" Team Wiki](https://rochewiki.roche.com/confluence/pages/viewpage.action?spaceKey=LOWCODE&title=Build+Your+Application)

---

# Overall policy

The policy within Roche regarding the use of external open source code is outlined in four steps (<https://opensource.roche.com/policies/using-external-open-source-code-within-roche>):

- Determine the License: Identify the license associated with the code, typically found in files like "license.txt" or "README.md" within the repository. If no license is provided, assume you don’t have the right to use the code.

- “Can I use it for this purpose?”: Assess if your intended use aligns with the permissions granted by the license.

- Identify Your Use Case and apply the License/Use Case Matrix: Determine your specific use case (e.g., internal R&D, distribution) and consult the provided matrix (see above link) to understand if the license allows for that use case. If the license isn’t listed, seek guidance from your legal contact.

- Dependencies & SBOMs: Address dependencies by generating a Software Bill of Materials (SBOM) to ensure all licenses within the project’s dependencies are complied with. Roche’s Licensing process and tools, CAPT, are recommended for this purpose.

# Release CS CoE code as open source

Open source release of CS CoE Code has a specific process described here (<https://opensource.roche.com/policies/Genentech-Pharma-REDs/open-source-release-process>)

# Missing information

The current open source policy edited by the innersource and opensource teams is pretty new (2024), the matrix of licenses is not complete and in case you are missing a license that you are using you should get in contact with them so it could be checked with the legal team regarding this matter.

# Implementing the SBOM and License checks

Gitlab comes with out of the box capailities to generate SBOMs with the underlying use of CycloneDX which is the recommended tool be the innersource team for such use cases.

# Configuring dependency scanning

You can use the preconfigured merge request from gitlab, this can be found in Secure → Security Configuration → Depedency Scanning

Alternatively if this doesn’t work or your gitlab-ci is complex you can directly :

- Make sure your .gitlab-ci.yml contains the `test` stage

- Import the following job template into your file

``` yaml
include:
  - template: Jobs/Dependency-Scanning.gitlab-ci.yml
```

<div class="note">

The dependency scans which ran as part of your CI pipeline generates SBOM that can be consulted and downloaded from gitlab (Secure → Dependency List)

</div>

# Configuring license scanning

Based on the above generated SBOMs Gitlab can run a license compliance check. To do so you’ll need to create policies in Secure → Policies

Policies for license checks can be performed on merge requests, this can be done from the gitlab UI but here is a yaml to get you started faster. Please adapt this following example to your need, it contains the license which are so far identified as matching the roche policies. **Please submit a MR for licenses that might be missing from this**

``` yaml
name: License
description: ''
enabled: true
actions:
- type: require_approval
  approvals_required: 1
  role_approvers:
  - owner
rules:
- type: license_finding
  match_on_inclusion: false
  license_types:
  - MIT License
  - Apache License 2.0
  - Mozilla Public License 2.0
  - GNU Affero General Public License v3.0 only
  - Creative Commons Attribution Non Commercial 4.0 International
  - GNU General Public License v2.0 only
  - Creative Commons Attribution 4.0 International
  - GNU General Public License v3.0 only
  - BSD 2-Clause "Simplified" License
  - BSD 3-Clause "New" or "Revised" License
  - GNU Library General Public License v2 or later
  - Creative Commons Attribution Share Alike 4.0 International
  license_states:
  - newly_detected
  - detected
  branch_type: protected
approval_settings:
  block_branch_modification: true
  prevent_pushing_and_force_pushing: false
```

# Checking compliance

# On merge requests

Using the above explained method you can configure wether there should be any approval from a given person on merge requests introducing new dependency with unsupported licenses.

<figure>
<img src="../images/mr_license_check.png" alt="mr license check" />
</figure>

# Overall

You can also consult the overal license compliance status of your repository and check every dependency which is not complying with the policy you defined.

<figure>
<img src="../images/repo_license_compliance.png" alt="repo license compliance" />
</figure>

---

# What is the Roche Renovate bot

The Renovate Bot is an open source tool which automatically scans and updates your software dependencies in your Git repository using pull requests.

The Roche Renovate Bot is adapted to our internal GitLab installation: code.roche.com.

Below we can find an example of the Roche Renovate Bot pull request:

<figure>
<img src="../images/renovate-pr.png" alt="renovate pr" />
</figure>

# Why use the Roche Renovate bot?

- **Automatic updates.** (Get pull requests to update your dependencies and lock files)

- **Works out of the box.** (Renovate finds relevant package files automatically, including in monorepos)

- **Share your configuration.** (Share your configuration with ESLint-like config presets)

- **On your schedule.** (Reduce noise by scheduling when Renovate creates PRs)

- **How you like it.** (You can customize the bot’s behavior with configuration files)

- **Out with the old, in with the new.** (Get replacement PRs to migrate from a deprecated dependency to the community suggested replacement, works with most managers, see [issue 14149](https://github.com/renovatebot/renovate/issues/14149) for exceptions)

- **Open source.** (Renovate is licensed under the [GNU Affero General Public License](https://github.com/renovatebot/renovate/blob/main/license))

# Getting started

The Renovate Bot can be executed as  
- Open source npm package

- Self-hosted installation using an open source Docker image (this is how the Roche Renovate Bot is running)

- using the Renovate App which is hosted by Mend.

The Roche way to use the Renovate Bot(Sally the Alpaca Bot) for code.roche.com is to use Self-hosted installation provisioned and maintained by the [DeveloperHub team](https://devhub.roche.com/).

Step-by-step instructions in how to set up and associate with your repository the Roche Renovate Bot: <https://devhub.roche.com/docs/default/Component/fk-renovate-roche>

# Additional information

Roche Renovate Bot repository: <https://code.roche.com/gitlab/renovate-roche/>

The Official Renovate Bot documentation: <https://docs.renovatebot.com/>

## F.A.Q.

Q: How is the initial configuration created in my repository if I just add Sally the Alpaca as the maintainer?

A: The Roche renovate Bot will issue an initial pull request with a local renovate.json file

``` json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": [
    "config:recommended",
    "group:allNonMajor",
    ":semanticCommitTypeAll(build)",
    ":semanticCommitScope(deps)",
    ":disableDependencyDashboard"
  ],
  "assignees": [
    "🚧 TODO: specify user logins and Renovate will the update MRs to them",
    "🚧 TODO: user ID #2 (or remove this list item)"
  ],
  "labels": [
    "Type::Maintenance"
  ],
  "rebaseWhen": "behind-base-branch",
  "prHourlyLimit": 10
}
```

And the pull request contains also a series of useful information:

<figure>
<img src="../images/initial-renovate-configuration-pr.png" alt="initial renovate configuration pr" />
</figure>

Q: I have invited Sally the Alpaca Bot to maintainers, but the configuration MR was not opened.

A: The Roche Renovate Bot opens branch called `renovate/configure` with commit title `chore: Configure renovate`. If your branch name rules or commit message rules are not compatible with these, then Sally the Alpaca will not be able to open the MR; consider ammending the rules or temporarily removing them.

Q: What can I do if the Roche Renovate Bot (Sally the Alpaca Bot) can’t access my private registries or I want to change the scanning frequency?

A: Please reach out to the DevHub team. Alternatively you could fork the Roche repository and set up the bot in your GitLab Group, but you have to maintain the entire infrastructure and configuration.

Gitlab pipeline example

``` yaml
stages:
  - repositories
  - renovate

default:
  tags:
    - devops-gitlab-runner

variables:
  LOG_LEVEL: info
  FF_TIMESTAMPS: true
  #LOG_FORMAT: json

#Function disabled (waiting for validation of all repos)
repositories:
  image: [GitLab runner image]
  stage: repositories
  script:
    - node index.js
    - cat repositories.json
  artifacts:
    paths:
      - repositories.json
renovate:
  image:
    name: [Renovate image]
    entrypoint: [""]
  needs:
    - repositories
  stage: renovate
  before_script:
    - |
      mkdir ~/.aws
      cat $DEV_AWS_TERRAFORM_SA >>  ~/.aws/credentials
      export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain [AWS artifact domain] --domain-owner [AWS account] --region eu-central-1 --query authorizationToken --output text`
      export NPM_CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain [AWS artifact domain] --domain-owner [AWS account] --region eu-central-1 --query authorizationToken --output text`
      cat $AWS_DOCKER_CONFIG >> /docker/config.json
      export DOCKER_CONFIG=/docker

    - export RENOVATE_CONFIG_FILE="$(pwd)/config.js"
    - |
      if [ "$CI_DEFAULT_BRANCH" != "$CI_COMMIT_BRANCH" ]; then
        export RENOVATE_ARGS="--dry-run"
      fi
  script:
    - echo $RENOVATE_ARGS
    - renovate $RENOVATE_ARGS
```

---
