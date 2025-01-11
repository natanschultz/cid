#!/usr/bin/env bash
#
# vi: set ff=unix syntax=sh cc=80 ts=2 sw=2 expandtab :
# shellcheck disable=SC1091,SC1090

# Cores para terminal
_RED="$(tput setaf 1)"
readonly _RED
_GREEN="$(tput setaf 2)"
readonly _GREEN
_YELLOW=$(tput setaf 3)
readonly _YELLOW
_BLUE=$(tput setaf 4)
readonly _BLUE
_MAGENTA=$(tput setaf 5)
readonly _MAGENTA
_CYAN=$(tput setaf 6)
readonly _CYAN
_WHYTE=$(tput setaf 7)
readonly _WHYTE
_RESET=$(tput sgr0)
readonly _RESET
_BOLD=$(tput bold)
readonly _BOLD

# Include de todos os arquivos da CLI que foram determinados no arquivo .env.config
# Caso este arquivo não seja encontrado irá retornar um erro.
source "${HOME}"/.env.config

# Funções obrigatorias que devem estar nos containers
source "${CLI_FULL_PATH}/src/docker.sh"
source "${CLI_FULL_PATH}/src/git.sh"
source "${CLI_FULL_PATH}/src/os.sh"

for ToolsToInclude in "${ENV_CONFIG_TOOLS[@]}"; do
  source "${CLI_FULL_PATH}/src/${ToolsToInclude}.sh"
done
