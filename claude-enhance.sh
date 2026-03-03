#!/usr/bin/env bash

echo "antigravity-claude-proxy start"

claude --model gemini-3-flash <<'EOF'
/plugin marketplace add obra/superpowers-marketplace
/plugin install superpowers@superpowers-marketplace
/plugin update superpowers
EOF
