# dotFiles
A collection of various configuration files that I tend to use for my environment.

This version is v2018.1.DEVELOPMENT

## Currently supported files
* bash
* git
* i3 WM
* perltidy
* tmux
* vim

## Setup
For setup run the setup script `setup.sh` 
Command line operations are as follows

| Switch | Options                                          |
| ------ | ------------------------------------------------ |
| `-d`   | Use the development repo instead of master       |
| `-f`   | Force updating files to the latest version       |
| `-u`   | Only perform an update instead of a full install |

## Bash
### Alias definitions
| Alias  | Command          |
| ------ | ---------------- |
| `clr`  | `clear`          |
| `h`    | `history`        |
| `la`   | `ls --color -ah` |
| `ll`   | `ls --color -hl` |
| `ls`   | `ls --color -h`  |
| `vimn` | `vim +NERDTree`  |
| `xx`   | `exit`           |
| `y`    | `yes`            |

### Key-binding definitions
| Key-binding                       | Command                     |
| --------------------------------- | --------------------------- |
| `[F2][g]`                         | `gvim`                      |
| `[F2][n]`                         | `vimn`                      |
| `[F2]`                            | `vim `                      |
| `[F3][.]`                         | `find . `                   |
| `[F3]`                            | `find `                     |
| `[F4][f]`                         | `sftp `                     |
| `[F4][x]`                         | `ssh -X `                   |
| `[F4]`                            | `ssh `                      |
| `[F5]`                            | `!!`                        |
| `[F6][l]`                         | `ln -s `                    |
| `[F6][r]`                         | `cp -irv`                   |
| `[F6]`                            | `cp -iv `                   |
| `[F7]`                            | `mv -iv `                   |
| `[F8][d]`                         | `rmdir `                    |
| `[F8][r]`                         | `rm -irv`                   |
| `[F8]`                            | `rm -iv `                   |
| `[F9]`                            | `tmux`                      |
| `[F12]`                           | `sudo `                     |
| `[alt + a][c]`                    | `apt-cache `                |
| `[alt + a][c][p]`                 | `apt-cache policy `         |
| `[alt + a][c][s]`                 | `apt-cache search `         |
| `[alt + a][g][a][r]`              | `apt-get autoremove`        |
| `[alt + a][g][alt + u]`           | `apt-get update`            |
| `[alt + a][g][i]`                 | `apt-get install`           |
| `[alt + a][g][r]`                 | `apt-get remove`            |
| `[alt + a][g][shift + u]`         | `apt-get dist-upgrade`      |
| `[alt + a][g][u]`                 | `apt-get upgrade`           |
| `[alt + a][g]`                    | `apt-get `                  |
| `[alt + a]`                       | `apt-`                      |
| `[alt + g][c]`                    | `grep -c `                  |
| `[alt + g][i]`                    | `grep -i `                  |
| `[alt + g][v]`                    | `grep -v `                  |
| `[alt + g]`                       | `grep `                     |
| `[alt + k][s]`                    | `kill -9 `                  |
| `[alt + k]`                       | `kill `                     |
| `[alt + l][a]`                    | `la `                       |
| `[alt + l][l][a][t][r]`           | `ls -latr`                  |
| `[alt + l][l]`                    | `ll `                       |
| `[alt + l]`                       | `ls `                       |
| `[alt + m]`                       | `mkdir -p`                  |
| `[alt + u]`                       | `cd ../`                    |
| `[shift + F2][g]`                 | `sudo gvim`                 |
| `[shift + F2]`                    | `sudo vim `                 |
| `[shift + F3][.]`                 | `sudo find . `              |
| `[shift + F3]`                    | `sudo find `                |
| `[shift + F4][f]`                 | `sudo sftp `                |
| `[shift + F4][x]`                 | `sudo ssh -X `              |
| `[shift + F4]`                    | `sudo ssh `                 |
| `[shift + F5]`                    | `sudo !!`                   |
| `[shift + F6][l]`                 | `sudo ln -s `               |
| `[shift + F6][r]`                 | `sudo cp -irv`              |
| `[shift + F6]`                    | `sudo cp -iv `              |
| `[shift + F7]`                    | `sudo mv -iv `              |
| `[shift + F8][d]`                 | `sudo rmdir `               |
| `[shift + F8][r]`                 | `sudo rm -irv`              |
| `[shift + F8]`                    | `sudo rm -iv `              |
| `[shift + F9]`                    | `sudo tmux`                 |
| `[shift + F12]`                   | `su`                        |
| `[shift + alt + a][c]`            | `sudo apt-cache `           |
| `[shift + alt + a][c][p]`         | `sudo apt-cache policy `    |
| `[shift + alt + a][c][s]`         | `sudo apt-cache search `    |
| `[shift + alt + a][g][a][r]`      | `sudo apt-get autoremove`   |
| `[shift + alt + a][g][alt + u]`   | `sudo apt-get update`       |
| `[shift + alt + a][g][i]`         | `sudo apt-get install`      |
| `[shift + alt + a][g][r]`         | `sudo apt-get remove`       |
| `[shift + alt + a][g][shift + u]` | `sudo apt-get dist-upgrade` |
| `[shift + alt + a][g][u]`         | `sudo apt-get upgrade`      |
| `[shift + alt + a][g]`            | `sudo apt-get `             |
| `[shift + alt + a]`               | `sudo apt-`                 |
| `[shift + alt + g][c]`            | `sudo grep -c `             |
| `[shift + alt + g][i]`            | `sudo grep -i `             |
| `[shift + alt + g][v]`            | `sudo grep -v `             |
| `[shift + alt + g]`               | `sudo grep `                |
| `[shift + alt + k][s]`            | `sudo kill -9 `             |
| `[shift + alt + k]`               | `sudo kill `                |
| `[shift + alt + l][a]`            | `sudo ls -a `               |
| `[shift + alt + l][l][a][t][r]`   | `sudo ls -latr`             |
| `[shift + alt + l][l]`            | `sudo ls -l `               |
| `[shift + alt + l]`               | `sudo ls `                  |
| `[shift + alt + m]`               | `sudo mkdir -p`             |
| `[shift + alt + u]`               | `sudo cd ../`               |

## Perltidy
The following switches are enabled for perltidy:

| Switch                                                                 | Explanation                                                         |
| ---------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `-bl`                                                                  | Opening braces left (Allman style)                                  |
| `-bt=2`                                                                | Curly brace tightness = 2                                           |
| `-cti=1`                                                               | Align closing parentheses with their opening counterpart            |
| `-it=2`                                                                | Iterate twice over the file when tidying                            |
| `-lp`                                                                  | Align non-block closing parentheses with their opening counterpart  |
| `-nsak="if else elsif unless while for return switch case given when"` | Remove spaces between the listed tokens and the opening parenthesis |
| `-nsfs`                                                                | No spaces after for-loop semicolons                                 |
| `-olc`                                                                 | Indent block comments unless they exceed the maximum line length    |
| `-pt=2`                                                                | Parenthesis tightness = 2                                           |
| `-sbt=2`                                                               | Square bracket tightness = 2                                        |
| `-st`                                                                  | Output to stdout                                                    |
| `-syn`                                                                 | Perform syntax checking when running                                |

## Tmux
The following settings are enabled for tmux:

| Setting                      | Explanation                     |
| ---------------------------- | ------------------------------- |
| `set -g history-limit 10000` | Set scrollback history to 10000 |
| `set -g mouse on`            | Enable mouse support            |

## Vim
### Autocmds
The following autocmds are set for the various filetypes / options

#### New files
* new perl files (.pl) will be created using a skeleton file defined in `~/.vim/skeleton.pl`

#### NERDTree
* vim will automatically exit if NERDTree is the only open buffer.

#### Perl files
* The compiler will automatically be set to perl for use with `:make`
* The error format will be set to `%f:%l:%m`
* The file in the active buffer will be automatically saved upon invocation of `:make`

### Keybindings
The following key sequences have been mapped

#### Normal Mode

| Key-Binding | Command |
| ----------- | ------- |
| `<leader>m` | `:make` |

### Commands
The following commands have been added to vim:

| Command     | Purpose                                                |
| ----------- | ------------------------------------------------------ |
| `HideDupes` | Stop highlighting duplicate lines in the active buffer |
| `ShowDupes` | Highlight duplicate lines in the active buffer         |
| `WordCount` | Count the amount of words in the active buffer         |

### Plugins
The following plugins for vim are installed and maintained by Vundle:
* [Better Rainbow Parentheses](https://github.com/kien/rainbow_parentheses.vim)
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
* [NERDTree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Vundle](https://github.com/VundleVim/Vundle.vim)
* [perldoc.vim](https://github.com/hotchpotch/perldoc-vim)
* [VimCompletesMe](https://github.com/ajh17/vimcompletesme)
* [vim-latex](https://github.com/vim-latex/vim-latex)
  * Note: vim-latex is set to produce output in pdf format by default
* [vim-monokai-phoenix](https://github.com/Reewr/vim-monokai-phoenix) theme
