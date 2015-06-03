# Colors: $fg, $fg_bold, $bg => cyan, white, yellow, magenta, black, blue, red, default, grey, green

NEWLINE=$'\n'

function parse_host_environment {
    case "$(hostname)" in
        *.local)
            ;&
        *.staging.*)
            host_environment="staging"
            color="$fg_bold[green]"
            ;;
        *qa*)
            host_environment="qa"
            color="$fg_bold[yellow]"
            ;;
        *)
            host_environment="live"
            color="$fg_bold[red]"
            ;;
    esac

    echo -n "%{$fg_bold[default]%}.%{$color%}$host_environment%{$reset_color%}"
}

function color_prompt {
    case "$(hostname)" in
        *.local)
            ;&
        *.staging.*)
            background="$bg[green]"
            ;;
        *qa*)
            background="$bg[yellow]"
            ;;
        *)
            background="$bg[red]"
            ;;
    esac

    echo -n "$NEWLINE%{$background%}%{$fg_bold[default]%}"
}

PROMPT='%{$fg_bold[green]%}%D{%R}%{$reset_color%} %(?:%{$fg_bold[green]%}✔:%{$fg_bold[red]%}✘)%{$reset_color%} %{$fg_bold[blue]%}%~%{$reset_color%} $(color_prompt)%(!:#:$)%{$reset_color%} '
RPROMPT='%{$fg_bold[green]%}%n%{$reset_color%}%{$fg_bold[white]%}@%{$reset_color%}%{$fg_bold[yellow]%}%m%{$reset_color%}$(parse_host_environment)'
