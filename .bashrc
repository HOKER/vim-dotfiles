set -o vi
alias ls="ls --color"
export EDITOR='vim'
export PS1='\u@\h:\[\e[33m\]\W\[\e[0m\]\$ '
export DOCKER_HOST=tcp://localhost:2375 
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH  
export GOPATH=$HOME/Workspace/playground/go
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH  
