# No greeting
set --erase fish_greeting

# Easy access and reloading of fish config
set CONFIG_FILE ~/.config/fish/config.fish
alias reload_config ". $CONFIG_FILE"

# Fish title
function fish_title
    printf "%s: %s" (pwd) $_
end

# Fish prompt
function fish_prompt 
    set -l last_status $status

    set_color blue
    printf "(%s)" (whoami)

    if test $last_status -ne 0
        printf "-(%s)" $last_status
    end

    set_color normal
    printf " \$ "
end

# Right prompt
function fish_right_prompt
    # From http://stackoverflow.com/a/2580228
    set -l working_dir (pwd | sed -e 's|/private||' -e "s|^$HOME|~|")

    set_color green
    printf "(%s)" $working_dir
     
    # From https://geraldkaszuba.com/tweaking-fish-shell/
    set -l git_branch (git rev-parse --abbrev-ref HEAD ^/dev/null) 
    if test $status -eq 0
        set -l git_dirty_count (git status --porcelain | wc -l | sed "s/ //g")

        if test $git_dirty_count -gt 0
            set_color magenta
            printf " (%s*)" $git_branch
        else
            set_color cyan
            printf " (%s)" $git_branch
        end

    end
end

