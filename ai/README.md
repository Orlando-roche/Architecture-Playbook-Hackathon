# AI-Optimized Playbook Content

This directory contains AI-optimized versions of the CS-CoE Architecture Playbook, structured for ChatGPT and similar LLM-based assistants.

---

## System Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                              GITHUB REPOSITORY                               │
│                    (Source of Truth - Architecture Playbook)                 │
│                                                                              │
│  ┌─────────────────────────────────┐    ┌─────────────────────────────────┐ │
│  │     src/asciidoc/modules/       │    │           ai/                   │ │
│  │     (Canonical Content)         │    │    (AI-Optimized Metadata)      │ │
│  │                                 │    │                                 │ │
│  │  ├── ROOT/pages/                │───▶│  ├── PLAYBOOK_INDEX.md          │ │
│  │  │   ├── index.adoc             │    │  ├── GLOSSARY.md                │ │
│  │  │   ├── team.adoc              │    │  └── packs/                     │ │
│  │  │   ├── bodies.adoc            │    │      ├── Governance.md          │ │
│  │  │   └── ...                    │    │      ├── ADRs.md                │ │
│  │  ├── guidelines/pages/          │    │      └── KnowledgeBase.md       │ │
│  │  ├── governance/pages/          │    │                                 │ │
│  │  └── knowledge_base/pages/      │    │  (Compiled from source,         │ │
│  │                                 │    │   optimized for LLM retrieval)  │ │
│  │  (.adoc files - human-readable) │    │  (.md files - AI-readable)      │ │
│  └─────────────────────────────────┘    └─────────────────────────────────┘ │
│                                                       │                      │
└───────────────────────────────────────────────────────┼──────────────────────┘
                                                        │
                                                        │ HTTPS fetch
                                                        │ (raw.githubusercontent.com)
                                                        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                              CHATGPT GPT                                     │
│                     (Architecture Playbook Assistant)                        │
│                                                                              │
│  ┌─────────────────────┐    ┌─────────────────────┐    ┌──────────────────┐ │
│  │    Instructions     │    │   Knowledge Files   │    │   User Query     │ │
│  │                     │    │   (uploaded .md)    │    │                  │ │
│  │  - Retrieval rules  │    │                     │    │  "What ADRs were │ │
│  │  - Response format  │    │  - PLAYBOOK_INDEX   │    │   approved?"     │ │
│  │  - Source linking   │    │  - GLOSSARY         │    │                  │ │
│  │                     │    │  - Governance.md    │    └────────┬─────────┘ │
│  └─────────────────────┘    │  - ADRs.md          │             │           │
│                             │  - KnowledgeBase.md │             ▼           │
│                             └─────────────────────┘    ┌──────────────────┐ │
│                                        │               │   LLM Processing │ │
│                                        └──────────────▶│                  │ │
│                                                        │  1. Match query  │ │
│                                                        │  2. Read pack    │ │
│                                                        │  3. Generate     │ │
│                                                        └────────┬─────────┘ │
│                                                                 │           │
└─────────────────────────────────────────────────────────────────┼───────────┘
                                                                  │
                                                                  ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              USER RESPONSE                                       │
│                                                                                  │
│  Answer                                                                          │
│  3 ADRs approved in 2025: ADR-25-01 (Animal Registry), ADR-25-02                │
│  (Orchestration Tool), ADR-25-03 (Architecture Management)                       │
│                                                                                  │
│  Sources                                                                         │
│  github.com/.../src/asciidoc/modules/governance/pages/2025-reviews/...          │
│                                                                                  │
└─────────────────────────────────────────────────────────────────────────────────┘
```

---

## Data Flow

```
┌──────────────┐      Manual/Script      ┌──────────────┐
│   Architect  │ ───────────────────────▶│    GitHub    │
│   (Author)   │   Edit .adoc files      │  src/asciidoc│
└──────────────┘                         └──────┬───────┘
                                                │
                                                │ Generate/Compile
                                                ▼
                                         ┌──────────────┐
                                         │    GitHub    │
                                         │    ai/packs  │
                                         └──────┬───────┘
                                                │
                                                │ Upload or Fetch
                                                ▼
┌──────────────┐      Natural Language   ┌──────────────┐
│     User     │ ◀─────────────────────▶ │  ChatGPT GPT │
│  (Consumer)  │   Q&A Interaction       │  (Assistant) │
└──────────────┘                         └──────────────┘
```

---

## Component Summary

| Component | Role | Content |
|-----------|------|---------|
| `src/asciidoc/` | Source of Truth | Human-authored .adoc files |
| `ai/` | AI Layer | Compiled .md packs optimized for LLM |
| ChatGPT GPT | Interface | Retrieves from ai/, responds to users |
| User | Consumer | Asks questions, gets grounded answers |

---

## Directory Structure

```
ai/
├── README.md           # This file
├── PLAYBOOK_INDEX.md   # Table of contents, topic routing
├── GLOSSARY.md         # Term definitions
└── packs/
    ├── Governance.md   # Architecture bodies, roles, principles, guardrails
    ├── ADRs.md         # Architecture Decision Records
    └── KnowledgeBase.md # Developer tools, security, how-tos
```

---

## Usage

### For ChatGPT GPT Setup

1. Upload all files from `ai/` to the GPT Knowledge folder
2. Configure instructions to reference these files
3. Set conversation starters for common queries

### For Content Updates

1. Edit source files in `src/asciidoc/modules/`
2. Regenerate the corresponding pack in `ai/packs/`
3. Re-upload to ChatGPT Knowledge if using uploaded files
