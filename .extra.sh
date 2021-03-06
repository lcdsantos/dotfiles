alias ll='ls -la --color=always'
alias la='ls -A'
alias l='ls -CF'
alias gl='git log --oneline --all --graph --decorate'
alias gs='git status'
alias gd='git diff'
alias ga='git add .'
alias gr='git rm'
alias gp='git push'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gck='git checkout'
alias gst='git stash'
alias gsta='git stash apply'
alias gcp='git cherry-pick'
alias gpus='git push'
alias gpul='git pull'
alias dev='npm run dev'
alias cat='bat'
alias kill5000='fuser -k -n tcp 5000'
alias x='code ~/.extra'
alias cert='aws acm describe-certificate --certificate-arn'
alias certwait='aws acm wait certificate-validated --certificate-arn'

c () {
	cert "$@" | jq '.Certificate.DomainValidationOptions'
}

c2 () {
	certwait "$@" && paplay /usr/share/sounds/ubuntu/notifications/Positive.ogg
}

GIT_AUTHOR_NAME="Leonardo Santos"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="leocs.1991@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global commit.gpgsign false
git config --global --replace-all core.pager "less -F -X"
