# No greeting
set --erase fish_greeting

# Easy access and reloading of fish config
set CONFIG_FILE .config/fish/config.fish
alias reload_config ". $CONFIG_FILE"

# Fish prompt
function fish_prompt
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')

    echo
    set_color blue
    echo -n (whoami) ""
    set_color $fish_color_cwd
    echo -n (prompt_pwd) ""
    set_color red
    echo \($git_branch\)
    set_color $fish_color_normal
    echo -n "\$ "
end
