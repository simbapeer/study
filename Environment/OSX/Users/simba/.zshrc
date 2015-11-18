# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jokinryou"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=~/tools/android-sdk-macosx/platform-tools:$PATH

export PATH=/Users/simba/tools/crystax-ndk-10.1.0:$PATH

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias addr2line='~/tools/crystax-ndk-10.1.0/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-addr2line'
alias grdl="./gradlew"
alias c="pbcopy"
alias ad="adb devices"
alias ap="adb push"
alias ash="adb shell"
alias p="pbpaste"
alias cdp="cd \$(pbpaste)"
alias ipython="python /Library/Python/2.7/site-packages/IPython/__main__.py"
alias fb="fastboot"
alias ffker="fastboot flash kernel /tmp/zImage"
alias ffsys="fastboot flash system /tmp/system.img"
alias ffboot="fastboot flash hikbootv2 /tmp/hikbootv2.bin"
alias ff="fastboot flash"
alias fr="fastboot reboot"
alias sshLinux="ssh simba@simba_linux"
alias sshMac="ssh simba@simba_mac"
alias sff="sudo /home/simba/projects/hik-x/hik4412_kit_kat/XDY_D2/out/host/linux-x86/bin/fastboot flash"
alias sfb="sudo /home/simba/projects/hik-x/hik4412_kit_kat/XDY_D2/out/host/linux-x86/bin/fastboot"
alias sfr="sudo /home/simba/projects/hik-x/hik4412_kit_kat/XDY_D2/out/host/linux-x86/bin/fastboot reboot-otg"


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
unsetopt NOMATCH

PERL_MB_OPT="--install_base \"/Users/simba/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/simba/perl5"; export PERL_MM_OPT;
function mountAndroid { hdiutil attach ~/AndroidImage/Android.sparsebundle -mountpoint /Volumes/Android; }
