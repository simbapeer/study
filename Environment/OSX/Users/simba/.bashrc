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

