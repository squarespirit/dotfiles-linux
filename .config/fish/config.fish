# No greeting
set --erase fish_greeting

# Easy access and reloading of fish config
set CONFIG_FILE .config/fish/config.fish
alias reload_config ". $CONFIG_FILE"

# Fish prompt
function fish_prompt
    # From http://stackoverflow.com/a/24582165
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    # From http://stackoverflow.com/a/2580228
    set -l working_dir (pwd | sed -e 's|/private||' -e "s|^$HOME|~|")

    echo
    set_color blue
    echo -n (whoami) ""
    set_color green
    echo -n $working_dir ""
    set_color brown
    echo \($git_branch\)
    set_color normal
    echo -n "\$ "
end
