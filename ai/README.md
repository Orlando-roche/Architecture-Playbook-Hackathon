# AI-Optimized Playbook Content

This directory contains AI-optimized versions of the CS-CoE Architecture Playbook content, structured for efficient consumption by ChatGPT Enterprise and similar LLM-based tools.

## Purpose

The `/ai` directory provides:
- Consolidated content packs organized by topic
- Navigation aids for different user personas
- Structured indexes for quick reference lookup

## Structure

```
ai/
├── START_HERE.md          # How to use this content with ChatGPT
├── READING_PATHS.md       # Guided paths by role
├── PLAYBOOK_INDEX.md      # Full table of contents
├── GLOSSARY.md            # Key terms and definitions
├── ADR_INDEX.md           # Architecture Decision Records index
├── packs/                 # Consolidated content by topic
└── meta/                  # Generation metadata
```

## Source of Truth

The canonical source for all content is `src/asciidoc/`. This `/ai` directory is derived from that content. Do not edit files here directly; update the source AsciiDoc files instead.

## Generation

Content in this directory is generated/curated from the Antora modules. See `meta/generation_report.md` for details on when and how this content was produced.
