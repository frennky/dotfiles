# tar given directory
function tarr() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# zip file or folder
function zipp() { zip -r9 "${1%%/}.zip" "$1"; }

# find file with pattern in name
function ff() { find . -type f -iname '*'"$*"'*'; }

# history filtering
function hg() { history | grep "$1"; }

# highlight with color
function hl() {
    declare -A colors
    colors[red]=31
    colors[green]=32
    colors[blue]=34
 
    color=$(echo -e "\e[1;${colors[$1]}m")
    current=$'\e[0m'
    sed -u s"/$2/$color\0$current/g" $3
}
