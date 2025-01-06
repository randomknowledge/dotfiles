#!/usr/bin/env bash

terminate_vim_in_current_window() {
	tmux list-panes -F "#{pane_id} #{pane_current_command}" | grep 'vim' | awk '/[0-9]+/{ print $1 }' | while read paneId; do
		tmux select-pane -t $paneId
		tmux send-keys :wqall
		tmux send-keys Enter
	done
}

terminate_vim_in_windows() {
	tmux list-windows -F "#{window_name}" | while read window_name; do
		tmux select-window -t $window_name
		terminate_vim_in_current_window
	done
}

terminate_vim_in_windows
