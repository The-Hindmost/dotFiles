#!/usr/bin/env bash

# Process command line options {{{1
let useDevRepo="0"
let force="0"
while getopts df opt; do
    case $opt in
        d)
            let useDevRepo="1"
            ;;
        f)
            let force="1"
            ;;
    esac
done
#}}}

cd "$(dirname "${BASH_SOURCE}")";

# Pull down the latest version of the repo {{{1
if [ "$useDevRepo" == "1" ]; then
    git pull origin development;
else
    git pull origin master;
fi;
#}}}

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

function doIt()
{
	rsync --exclude-from "exclude_me.txt" -avh --no-perms . ~;
}

# Sync the repo files {{{1
if [ "$force" == "1" ]; then
	doIt;
else
	read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
#}}}

vim +BundleInstall +qall

unset doIt;
