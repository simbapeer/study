
# MacPorts Installer addition on 2014-05-05_at_12:14:11: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=~/tools/android-sdk-macosx/platform-tools:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ff='fastboot flash'
alias fr='fastboot reboot'
alias sff='sudo /home/simba/android/sdk/android-sdk-linux/platform-tools//fastboot flash'
alias sfr='sudo /home/simba/android/sdk/android-sdk-linux/platform-tools//fastboot reboot'
alias ap='adb push'


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi
source ~/.git-completion.bash
