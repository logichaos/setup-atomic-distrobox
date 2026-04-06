#!/bin/bash
set -euo pipefail
CONTAINER="dev"

echo "Verifying dev container packages..."
for cmd in dotnet go node npm tsc python3 pip pipx func posting uv uvx; do
    if distrobox enter "$CONTAINER" -- which "$cmd" > /dev/null 2>&1; then
        echo "  [ok] $cmd"
    else
        echo "  [MISSING] $cmd"
    fi
done

echo "Checking dotnet SDKs..."
distrobox enter "$CONTAINER" -- dotnet --list-sdks

echo "Dev container setup complete."
