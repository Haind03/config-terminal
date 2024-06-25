# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
#eval "$(oh-my-posh init bash --config ~/config-terminal/ok.json)"

alias aslrcheck='cat /proc/sys/kernel/randomize_va_space'

alias aslroff="echo 0 | sudo tee /proc/sys/kernel/randomize_va_space"

alias aslron="echo 2 | sudo tee /proc/sys/kernel/randomize_va_space"

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=30;46:cd=30;45:su=30;41:sg=30;43:tw=30;42:ow=30;44'
export PATH=/usr/local/go/bin:$PATH
export C_INCLUDE_PATH=/usr/include
toilet -f mono9 -w 100 'Kali-linux' | boxes -d tux -a hc -p h8 | lolcat
echo ""
