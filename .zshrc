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
#CUSTOM ALIASES
#
################################################################
alias reload='source ~/.zshrc'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias whoamip="ip address | grep 'inet 192' | awk '{ print \$2 }' | cut -d / -f 1"
# ANDROID EMULATOR
alias emuload='function _emu(){ emulator @$1 -no-boot-anim -noaudio -no-snapshot-save; }; _emu'
# GIT
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gch='function _checkout(){ git checkout ${2:-origin}/$1 > /dev/null 2>&1 && git checkout -b $1; }; _checkout'
alias gf='git fetch'
alias gfa='git fetch --all'
alias ggp='git push'
alias ggl='git pull'
alias gif='git update-index --skip-worktree'
alias gsf='git update-index --no-skip-worktree'
alias gsw='git switch'
alias gs='git stash'
alias gsp='git stash pop'
# DOCKER
alias docker_service='sudo systemctl start docker.service'
alias docker_stop_all='docker container stop `docker container list -q` 2>/dev/null || echo "No running containers"'
################################################################
#
#PATH MODS
#
################################################################
# JAVA
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
# ANDROID
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/30.0.3/
export PATH=$JAVA_HOME/bin/:$PATH