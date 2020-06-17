alias ls='ls --color=auto'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/paulo/.sdkman"
[[ -s "/home/paulo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/paulo/.sdkman/bin/sdkman-init.sh"
fpath=($fpath "/home/paulo/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

export PATH="/home/paulo/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "/home/paulo/.gvm/scripts/gvm" ]] && source "/home/paulo/.gvm/scripts/gvm"

export PATH="$PATH:/usr/lib/jvm/jdk-11.0.7/bin"
export JAVA_HOME="/usr/lib/jvm/jdk-11.0.7"
export JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"

export PYENV_ROOT=$(pyenv root)

pyenv global 3.7.7
gvm use go1.14.4
nvm use v12.18.0

export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
export GOROOT=$(go env GOROOT)

sdk use maven 3.6.3
sdk use springboot 2.3.0.RELEASE
sdk use kotlin 1.3.72

export PATH="$PATH:~/tools/arduino/"
clear && neofetch

