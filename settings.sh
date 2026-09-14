#!/usr/bin/env bash
#
# Machine setup / preferences that don't live in a config file.
# Scratch space for now - add things here as they come up.
#
# Run with:  bash ~/dotfiles/settings.sh
# Safe to re-run; everything here is idempotent.

set -euo pipefail

# ---------------------------------------------------------------- git --------

# Name new repos' first branch "main" instead of "master".
git config --global init.defaultBranch main

# Commit identity.
git config --global user.name "reyaanc"
git config --global user.email "hiscorginess@gmail.com"

echo "settings applied."
