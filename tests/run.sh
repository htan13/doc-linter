#!/usr/bin/env bash
# Runs every check the release workflow requires. Usage: tests/run.sh
set -euo pipefail
cd "$(dirname "$0")"

echo "== Rule test cases"
vale --no-global --config=rules.vale.ini test ../Optimizely/styles/StyleGuide ../Optimizely/styles/Observed

echo "== Package install and load"
rm -rf .vale
vale --no-global --config=.vale.ini sync
vale --no-global --config=.vale.ini ls-config > /dev/null

echo "== Conforming page raises no StyleGuide errors"
vale --no-global --config=.vale.ini --minAlertLevel=error fixtures/conforming.md
