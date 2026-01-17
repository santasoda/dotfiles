# ==============================================================================
# 🚀 INITIAL SETUP: Homebrew
# Run this if 'brew' command is not found:
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Website: https://brew.sh/zh-cn/
# ==============================================================================
eval "$(/opt/homebrew/bin/brew shellenv)"

# ==============================================================================
# 🚀 INITIAL SETUP: Basic Tools (Git & SSH)
# 1. Install Git:
#    brew install git
# 2. Setup Git:
#    git config --global user.name "Your Name"
#    git config --global user.email "your_email@example.com"
# 3. Setup GitHub SSH (Run if 'ssh -T git@github.com' fails):
#    ssh-keygen -t ed25519 -C "your_email@example.com"
#    pbcopy < ~/.ssh/id_ed25519.pub
#    # Then go to GitHub -> Settings -> SSH Keys -> New Key -> Paste (Cmd+V)
# ==============================================================================

# ==============================================================================
# 🚀 INITIAL SETUP: Deploy Dotfiles (Clone & Link)
# 1. Clone your repo
#    mkdir -p ~/Work && cd ~/Work
#    git clone git@github.com:santasoda/dotfiles.git
# 2. Link all config files (⚠️ Backup/Delete existing files first!):
#    ln -s ~/Work/dotfiles/.zshrc ~/.zshrc
#    ln -s ~/Work/dotfiles/.vimrc ~/.vimrc
#    ln -s ~/Work/dotfiles/.gitconfig ~/.gitconfig
# ==============================================================================

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# ==============================================================================
# 🚀 INITIAL SETUP: Oh My Zsh
# Run this command first if ~/.oh-my-zsh is missing:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Website: https://ohmyz.sh/
# ==============================================================================
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ==============================================================================
# 🚀 INITIAL SETUP: Fonts (Maple Mono NF CN)
# Required for icons to render correctly in P10k.
# Install: brew install font-maple-mono-nf-cn
# ⚠️ Note: Open Terminal Settings (Cmd + ,) -> Profiles -> Text -> Font to select it!
# ==============================================================================

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ==============================================================================
# 🚀 INITIAL SETUP: Theme (Powerlevel10k)
# Run this command if p10k is missing:
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
# ==============================================================================
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# ==============================================================================
# 🚀 INITIAL SETUP: Plugins
# Run these commands if plugins are missing:
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# ==============================================================================
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
  extract
)

source $ZSH/oh-my-zsh.sh

# User configuration

# --- JetBrains Toolbox Scripts ---
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias viz="vim ~/.zshrc"
alias sz="source ~/.zshrc"


# ==============================================================================
# 🚀 INITIAL SETUP: Trash
# This is a small command-line program for OS X that moves files or folders to the trash.
# install: brew install trash
# repo: https://github.com/ali-rantakari/trash
# ==============================================================================
# I think I should have received enough lessons. :(
alias rm="trash"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==============================================
# Research & Engineering Workflow Config
# ==============================================

# 1. Directories Configuration
export RESEARCH_ROOT="$HOME/Research"
export WORK_ROOT="$HOME/Work"

# ==============================================
# Internal Helper Functions
# ==============================================

# Helper to handle editor launching logic
# Usage: _open_editor <editor_flag>
function _open_editor() {
    local editor_flag="$1"
    
    # If no flag provided, do nothing (stay in terminal)
    if [ -z "$editor_flag" ]; then return; fi

    echo "Launching editor..."
    case "$editor_flag" in
        c|v|vs|code)    code . ;;
        cur|cursor) cursor . ;;
        p|py|charm)
            if command -v charm &> /dev/null; then charm .
            elif command -v pycharm &> /dev/null; then pycharm .
            else open -a "PyCharm" .; fi
            ;;
        *) echo "Unknown editor flag: $editor_flag (Use v, c, or p)" ;;
    esac
}

# ==============================================
# Main Functions
# ==============================================

# 1. LAB: Experimental Mode
# Usage: lab <name> [editor] OR lab -n <name> [editor]
function lab() {
    # Case A: Create New Project (-n)
    if [[ "$1" == "-n" ]]; then
        if [ -z "$2" ]; then 
            echo "\033[0;31mError:\033[0m Usage: lab -n <name> [editor]"
            return 1
        fi
        echo "Initializing new experiment: $2..."
        mkdir -p "$RESEARCH_ROOT/lab/$2" && cd "$RESEARCH_ROOT/lab/$2"
        _open_editor "$3"
        return
    fi

    # Case B: List All Experiments
    if [ -z "$1" ]; then
        echo "\033[1;35m🧪 Research Experiments (Lab):\033[0m"
        ls -1F "$RESEARCH_ROOT/lab"
        return
    fi

    # Case C: Go to Existing Experiment
    if [ -d "$RESEARCH_ROOT/lab/$1" ]; then
        cd "$RESEARCH_ROOT/lab/$1"
        _open_editor "$2"
    else
        echo "\033[0;31mError:\033[0m Experiment '$1' not found."
        echo "Use 'lab -n $1' to create it."
    fi
}

# 2. ZOO: Reference Mode
# Usage: zoo <name> [editor]
function zoo() {
    if [ -z "$1" ]; then
        echo "\033[1;33m📚 Paper Baselines & Zoo:\033[0m"
        ls -1F "$RESEARCH_ROOT/zoo"
        return
    fi

    if [ -d "$RESEARCH_ROOT/zoo/$1" ]; then
        cd "$RESEARCH_ROOT/zoo/$1"
        _open_editor "$2"
    else
        echo "\033[0;31mError:\033[0m Reference '$1' not found in Zoo."
    fi
}

# 3. WORK: Engineering Mode
# Usage: work <name> [editor] OR work -n <name> [editor]
function work() {
    if [[ "$1" == "-n" ]]; then
        if [ -z "$2" ]; then 
            echo "\033[0;31mError:\033[0m Usage: work -n <name> [editor]"
            return 1
        fi
        echo "Initializing new work project: $2..."
        mkdir -p "$WORK_ROOT/$2" && cd "$WORK_ROOT/$2"
        _open_editor "$3"
        return
    fi

    if [ -z "$1" ]; then
        echo "\033[1;36m🛠️  Engineering Projects (Work):\033[0m"
        ls -1F "$WORK_ROOT"
        return
    fi

    if [ -d "$WORK_ROOT/$1" ]; then
        cd "$WORK_ROOT/$1"
        _open_editor "$2"
    else
        echo "\033[0;31mError:\033[0m Project '$1' not found in Work."
    fi
}

# ==============================================
# Dotfiles Management System
# Location: ~/Work/dotfiles
# ==============================================

export DOTFILES_ROOT="$HOME/Work/dotfiles"

# 4. DOT: System Configuration Management
# Usage: 
#   dot                -> Show status
#   dot sync "message" -> Sync with custom message (Required)
#   dot <git-command>  -> Pass-through (e.g., dot diff, dot log)
function dot() {
    # 1. Safety Check: Ensure directory exists
    if [ ! -d "$DOTFILES_ROOT" ]; then
        echo "\033[0;31mError:\033[0m Dotfiles directory not found at $DOTFILES_ROOT"
        return 1
    fi

    # 2. Enter Dotfiles Directory
    cd "$DOTFILES_ROOT"

    # Case A: No arguments -> Show Status
    if [ -z "$1" ]; then
        echo "\033[1;34m⚙️  Dotfiles Status ($DOTFILES_ROOT):\033[0m"
        git status -s
        # If clean, show last commit info
        if [ -z "$(git status --porcelain)" ]; then
             echo "\nLast update:"
             git log -1 --format="%cd (%cr) | %s" --date=format:"%Y-%m-%d %H:%M"
        fi
        cd - > /dev/null
        return
    fi

    # Case B: Sync (Require Commit Message)
    if [[ "$1" == "sync" ]]; then
        echo "🔄 Checking configuration changes..."
        git add .
        
        # Check if there are changes to commit
        if [ -n "$(git status --porcelain)" ]; then
            if [ -z "$2" ]; then
                echo "\033[0;31m❌ Error:\033[0m Commit message is required."
                echo "Usage: dot sync \"your message here\""
                cd - > /dev/null
                return 1
            fi

            local commit_msg="${@:2}"
            
            git commit -m "$commit_msg"
            git push
            echo "\033[1;32m✅ Synced: $commit_msg\033[0m"
        else
            echo "✨ No changes to sync."
        fi
        
        cd - > /dev/null
        return
    fi

    # Case C: Pass-through any other git commands
    git "$@"
    
    # Return to original directory
    cd - > /dev/null
}

# ==============================================
# Zsh Tab Autocomplete Integration
# This connects the functions to the file system
# ==============================================

# Helper function to generate completions from a specific directory
_lab_complete() { _files -W "$RESEARCH_ROOT/lab" -/; }
_zoo_complete() { _files -W "$RESEARCH_ROOT/zoo" -/; }
_work_complete() { _files -W "$WORK_ROOT" -/; }

# Assign completions to commands
compdef _lab_complete lab
compdef _zoo_complete zoo
compdef _work_complete work

# ==============================================
# 🛡️ Dotfiles Guardian
# Warn me if installers modify .zprofile hiddenly
# ==============================================
if [[ -s "$HOME/.zprofile" ]]; then
    echo "\n\033[1;33m⚠️  Warning: .zprofile is not empty!\033[0m"
    echo "An installer might have modified it. Check content:"
    echo "---------------------------------------------------"
    cat "$HOME/.zprofile"
    echo "---------------------------------------------------"
    echo "👉 If useful, move it to .zshrc and delete .zprofile.\n"
fi

# Load local/private config (NOT synced to GitHub)
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local