#!/bin/bash
set -e

# =============================================================================
# Generate AI Packs from AsciiDoc Source
# =============================================================================

# Directories
SRC_ROOT="src/asciidoc/modules/ROOT/pages"
SRC_GUIDELINES="src/asciidoc/modules/guidelines/pages"
SRC_GOVERNANCE="src/asciidoc/modules/governance/pages/2025-reviews"
SRC_KB="src/asciidoc/modules/knowledge_base/pages"
OUT_DIR="ai/packs"

# =============================================================================
# Validation: Check source directories exist
# =============================================================================
validate_directories() {
    local missing=0
    for dir in "$SRC_ROOT" "$SRC_GUIDELINES" "$SRC_GOVERNANCE" "$SRC_KB"; do
        if [ ! -d "$dir" ]; then
            echo "WARNING: Directory not found: $dir"
            missing=$((missing + 1))
        fi
    done
    if [ $missing -gt 0 ]; then
        echo "Some source directories are missing. Continuing with available content."
    fi
}

# =============================================================================
# Cleanup markdown content (removes broken images, links, emojis, etc.)
# =============================================================================
cleanup_markdown() {
    sed -E '
        # Remove markdown image references (broken paths)
        s/!\[[^\]]*\]\([^)]*\)//g
        
        # Remove broken markdown links but keep text: [text](broken.xml) -> text
        s/\[([^\]]*)\]\([^)]*\.(xml|adoc)\)/\1/g
        
        # Remove AsciiDoc-style links: link:url[text] -> text
        s/link:[^\[]*\[([^\]]*)\]/\1/g
        
        # Remove emojis
        s/📗//g
        s/ℹ️//g
        s/🌈//g
        s/🤝//g
        s/📌//g
        s/✅//g
        s/❌//g
        s/⚠️//g
        s/🔗//g
        s/📋//g
        s/🎯//g
        
        # Clean up AsciiDoc variables like {org-name}
        s/\{[a-zA-Z_-]*\}//g
        
        # Remove leftover empty image alt text artifacts
        s/\[\]//g
        
        # Clean up multiple consecutive blank lines (reduce to single)
        /^$/N
        /^\n$/d
    '
}

# =============================================================================
# Convert AsciiDoc to Markdown
# =============================================================================
convert_adoc_to_md() {
    local input_file="$1"
    local content=""
    
    # Try asciidoctor + pandoc first
    if command -v asciidoctor &> /dev/null && command -v pandoc &> /dev/null; then
        content=$(asciidoctor -b docbook -o - "$input_file" 2>/dev/null | \
                  pandoc -f docbook -t gfm --wrap=none 2>/dev/null) || content=""
    fi
    
    # Fallback to sed-based conversion if pandoc failed or not available
    if [ -z "$content" ]; then
        content=$(cat "$input_file" | sed -E '
            # Remove AsciiDoc directives and includes
            /^:.*:/d
            /^include::/d
            
            # Convert headings (= to #)
            s/^= (.*)$/# \1/
            s/^== (.*)$/## \1/
            s/^=== (.*)$/### \1/
            s/^==== (.*)$/#### \1/
            
            # Remove xref links, keep link text
            s/xref:[^[]*\[([^\]]*)\]/\1/g
            
            # Convert simple table markers
            s/^\|===.*$//
            
            # Convert NOTE blocks
            s/^\[NOTE\]$/> **Note**/
            s/^--$//
        ')
    fi
    
    # ALWAYS apply cleanup to all output (pandoc or sed)
    echo "$content" | cleanup_markdown
}

# =============================================================================
# Extract ADR metadata for summary table
# =============================================================================
extract_adr_metadata() {
    local file="$1"
    local filename=$(basename "$file" .adoc)
    
    # Extract ADR ID from filename (e.g., adr-25-01_animal-registry -> ADR-25-01)
    local adr_id=$(echo "$filename" | sed -E 's/^(adr-[0-9]+-[0-9]+).*/\1/' | tr '[:lower:]' '[:upper:]')
    
    # Extract title from first heading, remove ADR ID prefix if present
    local title=$(grep -m1 "^= " "$file" | sed 's/^= //' | sed -E "s/^ADR-[0-9]+-[0-9]+: ?//")
    
    # Extract status (handle various table formats)
    local status=$(grep -iE "^\|.*Status.*\|" "$file" | head -1 | sed -E 's/.*\| *([A-Za-z]+) *\|?.*/\1/' | tr -d '|* ')
    if [ -z "$status" ]; then
        status=$(grep -iE "Status" "$file" | head -1 | grep -oE "(Accepted|Draft|Rejected|Superseded)" | head -1)
    fi
    [ -z "$status" ] && status="Unknown"
    
    # Extract date (handle various formats, preserve spaces)
    local date=$(grep -iE "Publication Date" "$file" | head -1 | sed -E 's/.*\| *([A-Za-z]+ [0-9]+, [0-9]+).*/\1/' | tr -d '|*')
    if [ -z "$date" ] || [ "$date" = "$(grep -iE 'Publication Date' "$file" | head -1)" ]; then
        # Try alternate extraction
        date=$(grep -iE "Publication Date" "$file" | head -1 | grep -oE "[A-Z][a-z]+ [0-9]+, [0-9]+" | head -1)
    fi
    [ -z "$date" ] && date="Unknown"
    
    echo "| $adr_id | $title | $status | $date |"
}

# =============================================================================
# Main Script
# =============================================================================

echo "Starting AI pack generation..."
echo "=============================="

# Validate directories
validate_directories

# Ensure output directory exists
mkdir -p "$OUT_DIR"

# =============================================================================
# Generate Governance.md
# =============================================================================
echo "Generating Governance.md..."
{
    echo "# Governance"
    echo ""
    echo "> Sources: \`src/asciidoc/modules/ROOT/pages/\`, \`src/asciidoc/modules/guidelines/pages/\`"
    echo ""
    echo "---"
    
    for file in "$SRC_ROOT"/*.adoc "$SRC_GUIDELINES"/*.adoc; do
        [ -f "$file" ] || continue
        echo ""
        convert_adoc_to_md "$file"
        echo ""
        echo "---"
    done
} > "$OUT_DIR/Governance.md"

# =============================================================================
# Generate ADRs.md with Summary Table
# =============================================================================
echo "Generating ADRs.md..."
{
    echo "# Architecture Decision Records (ADRs)"
    echo ""
    echo "> Source: \`src/asciidoc/modules/governance/pages/2025-reviews/\`"
    echo ""
    echo "---"
    echo ""
    echo "## Summary"
    echo ""
    echo "| ID | Title | Status | Date |"
    echo "|----|-------|--------|------|"
    
    # Generate summary table
    for file in "$SRC_GOVERNANCE"/*.adoc; do
        [ -f "$file" ] || continue
        extract_adr_metadata "$file"
    done
    
    echo ""
    echo "---"
    echo ""
    echo "## Full ADR Details"
    echo ""
    
    # Generate full content
    for file in "$SRC_GOVERNANCE"/*.adoc; do
        [ -f "$file" ] || continue
        echo ""
        convert_adoc_to_md "$file"
        echo ""
        echo "---"
    done
} > "$OUT_DIR/ADRs.md"

# =============================================================================
# Generate KnowledgeBase.md
# =============================================================================
echo "Generating KnowledgeBase.md..."
{
    echo "# Knowledge Base"
    echo ""
    echo "> Source: \`src/asciidoc/modules/knowledge_base/pages/\`"
    echo ""
    echo "---"
    
    for file in "$SRC_KB"/*.adoc; do
        [ -f "$file" ] || continue
        echo ""
        convert_adoc_to_md "$file"
        echo ""
        echo "---"
    done
} > "$OUT_DIR/KnowledgeBase.md"

# =============================================================================
# Summary
# =============================================================================
echo ""
echo "AI packs generated successfully!"
echo "================================"
echo ""
echo "Files created:"
ls -la "$OUT_DIR"
echo ""
echo "Line counts:"
wc -l "$OUT_DIR"/*.md
echo ""
echo "Done!"
