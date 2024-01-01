#!/bin/sh -e
set -x

ruff fastcrudapi tests docs_src scripts --fix
ruff format fastcrudapi tests docs_src scripts