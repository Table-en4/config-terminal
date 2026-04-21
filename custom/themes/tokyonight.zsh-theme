# Colors (Tokyo Night)
local BLUE="%F{33}"     # #7aa2f7
local CYAN="%F{81}"     # #7dcfff
local MAGENTA="%F{141}" # #bb9af7
local RED="%F{204}"     # #f7768e
local GREEN="%F{113}"   # #9ece6a
local YELLOW="%F{180}"  # #e0af68
local MAUVE="%F{135}"   # #B577D9
local RESET="%f%k"

# Prompt structure
PROMPT='${BLUE}%n${RESET}@${MAGENTA}%m ${CYAN}%~ ${GREEN}$(git_prompt_info)${RESET}
❯ '

# Git info (only if inside a git repo)
ZSH_THEME_GIT_PROMPT_PREFIX="(${YELLOW}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${RESET})"
ZSH_THEME_GIT_PROMPT_DIRTY="${RED}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Right prompt (RPS1)
RPS1="%(?..${MAUVE}%? ↵${RESET})"
if (( $+functions[virtualenv_prompt_info] )); then
  RPS1+='$(virtualenv_prompt_info)'
fi
RPS1+=" %F{237}%n@%m${RESET}"
