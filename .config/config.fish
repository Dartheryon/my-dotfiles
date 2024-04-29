set fish_greeting ""
if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/opt/homebrew/bin/brew shellenv)"

    starship init fish | source
end

#=========== alias ===========#
alias g git
alias cf 'nvim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish'
alias udemy 'cd ~/SelfLearning/Udemy/; and ll'
alias gac 'git add .; and git commit'
#=========== alias ===========#



command -qv nvim && alias vim nvim
set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -g fish_autosuggestion_enabled 1
set -gx TERM xterm-256color
set -gx COLORTERM truecolor
set -gx HOMEBREW_AUTO_UPDATE_SECS 86400
