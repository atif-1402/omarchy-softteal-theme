set -l color00 '#1A1815'
set -l color01 '#E1D5B1'
set -l color02 '#989f9b'
set -l color03 '#F5EFD4'
set -l color04 '#a1a5b5'
set -l color05 '#aaafbb'
set -l color06 '#b5bbbf'
set -l color07 '#FEFCE5'
set -l color08 '#908b84'
set -l color09 '#fbf9f3'
set -l color0A '#c7cbc9'
set -l color0B '#ffffff'
set -l color0C '#d4d6de'
set -l color0D '#dddfe4'
set -l color0E '#e6e8ea'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
