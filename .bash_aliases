# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias halt='halt -p'

alias gco='git checkout $(git branch | grep -v $(git rev-parse --abbrev-ref HEAD) | fzf)'
alias gsp='git stash pop $(git stash list | fzf | cut -d=: -f1)'
alias grb='git rebase -i $(git log --all --graph --oneline --decorate | fzf --reverse | sed -Ee "s/.* ([a-f0-9]{6,}) .*/\1/")'
alias gm='git merge --no-ff $(git branch | grep -v $(git rev-parse --abbrev-ref HEAD) | fzf)'
alias gp='git push'

alias ga='git add -p'

alias gsl='git stash list'
alias gs='git status'
alias gsh='git show'
alias gd='git diff'
alias gh='git history'
alias gha='git history --all'
alias gl='git log'
alias gb='git branch -a'
