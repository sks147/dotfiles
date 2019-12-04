export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/google-cloud-sdk/bin/:$PATH
export PATH=/Library/PostgreSQL/11/bin:$PATH
export N_PREFIX=/usr/local/bin/

# Path to your oh-my-zsh installation.
export ZSH="/Users/apple/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

# youtube-dl aliases
alias youtube-audio="youtube-dl -x --audio-format "mp3" --audio-quality 0 --no-playlist"
alias youtube-360="youtube-dl -f 18"
alias youtube-480="youtube-dl -f 135+140"
alias youtube-720="youtube-dl -f 22"
alias youtube-1080="youtube-dl -f 137+140"
alias youtube-2k="youtube-dl -f 400+140"
alias youtube-4k="youtube-dl -f 401+140"

# kubectl aliases
alias klog="kubectl logs --follow"
alias kpods="kubectl get pods"
alias kit="kubectl exec -it"
alias kdel="kubectl delete pod"
alias kctx="kubectl config get-contexts"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/apple/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/apple/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/apple/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/apple/google-cloud-sdk/completion.zsh.inc'; fi
#Torrench
PATH=/Users/apple/google-cloud-sdk/bin:/Library/PostgreSQL/11/bin:/Users/apple/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/apple/google-cloud-sdk/bin/:/Users/apple/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
