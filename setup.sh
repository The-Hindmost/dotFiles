#!/usr/bin/env bash
# Functions {{{1
function doIt() #{{{2
{
    if [ "$updateOnly" == "0" ]; then
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi;

	rsync --exclude-from "exclude_me.txt" -avh --no-perms . ~;
    vim -E -s -c BundleInstall -c qa
    vim -E -s -c PluginUpdate -c qa
    git config --global core.excludesfile ~/.gitignore

    echo "Now restart terminal, or source ~/.bashrc"
}

# Main {{{1
# Setup required variables {{{2
let useDevRepo="0"
let force="0"
let updateOnly="0"

# Process command line options {{{2
while getopts dfu opt; do
    case $opt in
        d)
            let useDevRepo="1"
            ;;
        f)
            let force="1"
            ;;
        u)
            let updateOnly="1"
            ;;
    esac
done

# Pull down the latest version of the repo {{{2
cd "$(dirname "${BASH_SOURCE}")";
if [ "$useDevRepo" == "1" ]; then
    git pull origin development;
else
    git pull origin master;
fi;

# Sync the repo files {{{2
if [ "$force" == "1" ]; then
	doIt;
else
	read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;

# Tidy-up {{{2
unset doIt;
