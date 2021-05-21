# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
################################################################
#
#CUSTOM
#
################################################################
alias reload='source ~/.zshrc'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias code='code-insiders'
# ANDROID EMULATOR
alias emuload='function _emu(){ emulator @$1 -no-boot-anim -noaudio -no-snapshot-save; }; _emu'
# GIT
alias ggp='git push'
alias ggl='git pull'
alias gc='git commit'
alias gca='git commit --amend'
alias ga='git add'
alias gap='git add -p'
alias ggf='git fetch'
# DOCKER
alias docker_service='sudo systemctl start docker.service'
alias docker_stop_all='docker container stop `docker container list -q` 2>/dev/null || echo "No running containers"'
