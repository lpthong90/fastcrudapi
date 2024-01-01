#!/usr/bin/env bash

set -e
set -x

# mypy fastcrudapi
ruff fastcrudapi tests docs_src scripts
ruff format fastcrudapi tests --check