#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

rm -rf buildscan
mkdir buildscan
scan-build --status-bugs meson setup buildscan
scan-build --status-bugs meson compile -C buildscan/
