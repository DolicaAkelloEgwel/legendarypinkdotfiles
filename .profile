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

export VISUAL=nvim;
export EDITOR=nvim;

export PATH=/home/dolica/scripts:/home/dolica/applications:/home/dolica/.local/lib/python3.8/site-packages:$PATH
export PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH

export BROWSER=librewolf;

# Man pages
export MANPAGER='nvim +Man!'
export MANWIDTH=999

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
. "$HOME/.cargo/env"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/dolica/.lmstudio/bin"
# End of LM Studio CLI section

