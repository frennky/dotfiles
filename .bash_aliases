# dir commands
alias ll='ls -alF'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ..; cd ..'

# disk space usage
alias df='df -Th'

# locate command
alias which='type -a'

# history
alias h='history'

# datetime
alias d='date "+%F %T"'

# chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# search running processes
alias ps="ps aux | grep "

# open ports
alias ports='netstat -pena --inet'

# environment variables
alias env='env | sort'
alias path='echo -e ${PATH//:/\\n}'

# enable color support
alias grep='grep --color=auto'
# use pipe to chain more words but need to escape it
alias greph="grep --color=always -e^ -e"

# kubectl
alias k='kubectl'
