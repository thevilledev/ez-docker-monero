#!/bin/bash
: ${CONTAINER_NAME:="ezdockermonero_monero_1"}
docker exec -ti ${CONTAINER_NAME} monero-wallet-cli "$@"
