#!/bin/bash
set -e

# Directories
SRC_ROOT="src/asciidoc/modules/ROOT/pages"
SRC_GUIDELINES="src/asciidoc/modules/guidelines/pages"
SRC_GOVERNANCE="src/asciidoc/modules/governance/pages/2025-reviews"
SRC_KB="src/asciidoc/modules/knowledge_base/pages"
OUT_DIR="ai/packs"

mkdir -p "$OUT_DIR"

# Convert AsciiDoc to Markdown
convert_adoc_to_md() {
    local input_file="$1"
    local content
    
    if command -v asciidoctor &> /dev/null && command -v pandoc &> /dev/null; then
        content=$(asciidoctor -b docbook -o - "$input_file" 2>/dev/null | \
                  pandoc -f docbook -t gfm --wrap=none 2>/dev/null) || content=""
    fi
    
    if [ -z "$content" ]; then
        content=$(cat "$input_file" | sed -E '
            /^:.*:/d
            /^include::/d
            s/^= (.*)$/# \1/
            s/^== (.*)$/## \1/
            s/^=== (.*)$/### \1/
            s/^==== (.*)$/#### \1/
            s/xref:[^[]*\[([^\]]*)\]/\1/g
            s/^\|===.*$//
            s/^\[NOTE\]$/> **Note**/
            s/^--$//
        ')
    fi
    
    echo "$content"
}

# Generate Governance.md
echo "Generating Governance.md..."
{
    echo "# Governance"
    echo "> Sources: \`src/asciidoc/modules/ROOT/pages/\`, \`src/asciidoc/modules/guidelines/pages/\`"
    echo "---"
    
    for file in "$SRC_ROOT"/*.adoc "$SRC_GUIDELINES"/*.adoc; do
        [ -f "$file" ] || continue
        echo ""
        convert_adoc_to_md "$file"
        echo "---"
    done
} > "$OUT_DIR/Governance.md"

# Generate ADRs.md
echo "Generating ADRs.md..."
{
    echo "# Architecture Decision Records (ADRs)"
    echo "> Source: \`src/asciidoc/modules/governance/pages/2025-reviews/\`"
    echo "---"
    
    for file in "$SRC_GOVERNANCE"/*.adoc; do
        [ -f "$file" ] || continue
        echo ""
        convert_adoc_to_md "$file"
        echo "---"
    done
} > "$OUT_DIR/ADRs.md"

# Generate KnowledgeBase.md
echo "Generating KnowledgeBase.md..."
{
    echo "# Knowledge Base"
    echo "> Source: \`src/asciidoc/modules/knowledge_base/pages/\`"
    echo "---"
    
    for file in "$SRC_KB"/*.adoc; do
        [ -f "$file" ] || continue
        echo ""
        convert_adoc_to_md "$file"
        echo "---"
    done
} > "$OUT_DIR/KnowledgeBase.md"

echo "AI packs generated!"
ls -la "$OUT_DIR"

