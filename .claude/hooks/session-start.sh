#!/bin/bash
# Installs REA (Reverse Engineer Anything) so its MCP server, registered in
# .mcp.json, is available in Claude Code cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

REA_VERSION="6.4.0"

if command -v rea >/dev/null 2>&1 && rea --help 2>/dev/null | head -1 | grep -q "rea@${REA_VERSION}"; then
  exit 0
fi

npm install -g --no-fund --no-audit "rea-agents@${REA_VERSION}" >&2
