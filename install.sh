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

[[ $# == 0 ]] && install_all || install $*
