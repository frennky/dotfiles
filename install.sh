#!/bin/bash
set -e

readonly INSTALL_SCRIPTS_DIR="./install"

install_all() {
    while read script
    do
        bash "$script"
    done <<< $(find $INSTALL_SCRIPTS_DIR -name "*.sh" -type f)
}

install() {
    local features=$1
    for f in $features; do
        local script="$INSTALL_SCRIPTS_DIR/$f.sh"
        [ -f $script ] && bash $script || echo "$script: No such file"
    done
}

configure_bash() {
    ln -sf $(pwd)/.bash_aliases ~/.bash_aliases
    ln -sf $(pwd)/.bash_functions ~/.bash_functions
    ln -sf $(pwd)/.bashrc ~/.bashrc
}

configure_bash

[[ $# == 0 ]] && install_all || install $*
