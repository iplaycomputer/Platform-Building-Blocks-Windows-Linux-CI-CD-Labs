#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Minimal Linux script to install and register a GitHub Actions self-hosted runner.
# DO NOT store tokens in repo. Provide RUNNER_URL and RUNNER_TOKEN as env vars.

set -euo pipefail

: "${RUNNER_URL:?set RUNNER_URL e.g. https://github.com/OWNER/REPO}"
: "${RUNNER_TOKEN:?set RUNNER_TOKEN from repo Settings→Actions→Runners→New self-hosted runner}"

RUNNER_VERSION="${RUNNER_VERSION:-2.308.0}"
RUNNER_ARCH="${RUNNER_ARCH:-x64}"
WORKDIR="/opt/actions-runner"

sudo mkdir -p "$WORKDIR"
sudo chown "$(id -u):$(id -g)" "$WORKDIR"
cd "$WORKDIR"

echo "Downloading runner v${RUNNER_VERSION}..."
curl -fsSLo actions-runner.tar.gz \
  "https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-${RUNNER_ARCH}-${RUNNER_VERSION}.tar.gz"
tar xzf actions-runner.tar.gz

echo "Configuring runner..."
./config.sh --url "$RUNNER_URL" --token "$RUNNER_TOKEN" \
  --labels "linux-build" --unattended

# Uncomment for persistent service
# sudo ./svc.sh install
# sudo ./svc.sh start

echo "Starting runner in background..."
nohup ./run.sh >/var/log/actions-runner.log 2>&1 &

echo "Runner started. Check Actions UI for registration."
