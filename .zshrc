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
alias killp='function _killp(){ fuser -k $1/tcp; }; _killp'
# ANDROID EMULATOR
alias emuload='function _emu(){ emulator @$1 -no-boot-anim -noaudio -no-snapshot-save; }; _emu'
# GIT
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gbu='function _gb(){ BRANCH_NAME=`git branch --show-current`; git branch --set-upstream-to=${1:-origin}/$BRANCH_NAME $BRANCH_NAME}; _gb'
alias gc='git commit'
alias gca='git commit --amend'
alias gch='function _checkout(){ git checkout ${2:-origin}/$1 > /dev/null 2>&1 && git checkout -b $1; }; _checkout'
alias gf='git fetch'
alias gfa='git fetch --all'
alias ggp='git push --follow-tags'
alias ggpt='git push --tags'
alias ggpu='function _gp(){ BRANCH_NAME=`git branch --show-current`; git push --follow-tags --set-upstream ${1:-origin} $BRANCH_NAME}; _gp'
alias ggl='git pull --rebase'
alias gif='git update-index --skip-worktree'
alias gl='git log --pretty=oneline --abbrev-commit'
alias grn='git rebase --no-verify'
alias gsf='git update-index --no-skip-worktree'
alias gsw='git switch'
alias gs='git stash'
alias gss='git status --short'
alias gsp='git stash pop'
alias gdiff='function _gd(){ git --no-pager diff --output=${4:-diff.patch} $2 $3 -- ${1:-*}}; _gd'
alias gcdir='git config --global --add safe.directory `pwd`'
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
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/23.0.7599858
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/30.0.3/
export PATH=$JAVA_HOME/bin/:$PATH

. /opt/asdf-vm/asdf.sh

# bun completions
[ -s "/home/thlmenezes/.bun/_bun" ] && source "/home/thlmenezes/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

. ~/.asdf/plugins/java/set-java-home.zsh

# .NET
export DOTNET_TOOLS="$HOME/.dotnet/tools"
export PATH="$DOTNET_TOOLS:$PATH"
export DOTNET_ROOT="/usr/share/dotnet"
