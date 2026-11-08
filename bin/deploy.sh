#!/bin/bash
set -e
[ -f .env ] && source .env
DEPLOY_TARGET="${DEPLOY_TARGET:?Set DEPLOY_TARGET in .env}"
ssh "${DEPLOY_TARGET}" "~/private-isu/restart-server.sh"
