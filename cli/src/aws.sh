#!/usr/bin/env bash
#
# vi: set ff=unix syntax=sh cc=80 ts=2 sw=2 expandtab :
# shellcheck disable=SC1091,SC1090
#
# @description: Abaixo fica a inclusão de todos os tipos de serviços que são utilizados pela AWS.
# @description: Quando houver necessidade de usar outro serviço dentro da AWS, acrescente aqui o arquivo responsável pelas chamadas.
# @arg: CLI_FULL_PATH

source "${CLI_FULL_PATH}"/src/aws/aws.sh
source "${CLI_FULL_PATH}"/src/aws/api-gateway.sh
source "${CLI_FULL_PATH}"/src/aws/cloudfront.sh
source "${CLI_FULL_PATH}"/src/aws/eks.sh
source "${CLI_FULL_PATH}"/src/aws/lambda.sh
source "${CLI_FULL_PATH}"/src/aws/secrets-manager.sh
