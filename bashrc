alias ll="ls -al"
alias l="ls -al"
alias docksave='[[ ! -z "$1" ]] && docker commit $(docker ps -lq)'

set PATH=/c/bin:/c/Program\ Files/Python37/Scripts:$PATH

function gbranch_label {
	BRANCH=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
	if [[ ! -z "$BRANCH" ]]; then 
		printf "($BRANCH)"
	else
		printf ""
	fi
}

# same as below but with __git_ps1 instead of my function
# export PS1="\[\033]0;\W\007\]\n\[\033[1;$((${SHLVL}+29))m\][\$?,\${SHLVL}] \[\033[0;32m\]\@ \[\033[35m\]\u \[\033[0;33m\]\w\[\033[0;36m\]`__git_ps1`\[\033[0m\]\n\\$\[$(tput sgr0)\] "
export PS1="\[\033]0;\W\007\]\n\[\033[1;$((${SHLVL}+29))m\][\$?,\${SHLVL}] \[\033[0;32m\]\@ \[\033[35m\]\u \[\033[0;33m\]\w\[\033[0;36m\] \`gbranch_label\`\[\033[0m\]\n\\$\[$(tput sgr0)\] "

# Origional git ps1
# export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$"

# trap 'CLIP=$(powershell Get-Clipboard)' DEBUG
