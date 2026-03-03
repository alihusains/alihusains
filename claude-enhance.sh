#!/usr/bin/env bash
set -euo pipefail

echo "antigravity-claude-proxy start"

expect <<'EOF'
spawn claude --model gemini-3-flash

# Optional: wait for a prompt, adjust the pattern to match Claude's prompt
expect "claude>"

send "/plugin marketplace add obra/superpowers-marketplace\r"
expect "claude>"

send "/plugin install superpowers@superpowers-marketplace\r"
expect "claude>"

send "/plugin update superpowers\r"
expect "claude>"

interact
EOF
