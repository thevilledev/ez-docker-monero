#!/bin/bash
set -Eeuo pipefail
[ ${#} -eq 0 ] && set -- monerod
exec $@
