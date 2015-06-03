# Colors: $fg, $fg_bold, $bg => cyan, white, yellow, magenta, black, blue, red, default, grey, green
PROMPT='%{$fg_bold[green]%}%n%{$reset_color%}%{$fg_bold[white]%}@%{$reset_color%}%{$fg_bold[yellow]%}%m%{$reset_color%} %{$fg_bold[blue]%}%1~%{$reset_color%} %(!:#:$) '
RPROMPT='%(?:%{$fg_bold[green]%}✔:%{$fg_bold[red]%}✘)%{$reset_color%}'
