#!/bin/bash

selected_path=$(find ~/ ~/workspaces/personal ~/workspaces/spreadshirt -mindepth 1 -maxdepth 1 -type d | fzf)
if [[ -z $selected_path ]]; then 
    exit 0
fi

selected_name=$(basename "$selected_path" | tr . _)

if [ ! -n "$TMUX" ]; then
    tmux new-session -As $selected_name -c $selected_path 
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected_path
fi

tmux switch-client -t $selected_name
