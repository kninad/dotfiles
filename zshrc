export PATH=$HOME/.toolbox/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up mise for runtime management
eval "$(mise activate zsh)"
source /Users/ninadkk/.brazil_completion/zsh_completion


##### Custom Includes #####

## Conda
# eval "$(/Users/ninadkk/miniconda3/bin/conda shell.zsh hook)"


## Starship Terminal Prompt
eval "$(starship init zsh)"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-24.jdk/Contents/Home"

# zsh auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


