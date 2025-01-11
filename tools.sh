#!/usr/bin/env bash
#
# vi: set ff=unix syntax=sh cc=80 ts=2 sw=2 expandtab :
set -o errexit  # Exit on most errors (see the manual)
set -o errtrace # Make sure any error trap is inherited
set -o nounset  # Disallow expansion of unset variables
set -o pipefail # Use last non-zero exit code in a pipelin

function CreateNewClient() {
  local ClientName="${1}"

  echo "Criando novo cliente ${ClientName}"

  cp -av clients/client1-example clients/${ClientName}

  (
    cd clients/${ClientName}

    mv client1-example.containers.yml ${ClientName}.containers.yml
    mv client1-example.secrets.yml ${ClientName}.secrets.yml

    sed -i -e "s|CLIENT_NAME=client1-example|CLIENT_NAME=${ClientName}|g" .env.common
  )
}

function help() {
  echo "-cnc | CreateNewClient"
}

case "$1" in
  -cnc)
    CreateNewClient ${2}
    ;;
  *) help ;;
esac
