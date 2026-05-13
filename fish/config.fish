if status is-interactive

# Commands to run in interactive sessions can go here

end



set -g fish_greeting



starship init fish | source



function __fastfetch_rotate

    set configs ~/.config/fastfetch/config*.jsonc

    set count (count $configs)

    set idx_file ~/.config/fastfetch/.last_idx



    set idx 1

    if test -f $idx_file

        set idx (math (cat $idx_file) % $count + 1)

    end



    echo $idx > $idx_file

    fastfetch --config $configs[$idx]

end



__fastfetch_rotate