# start X at login
if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
		exec startx -- -keeptty
	end
end

set FISH_CLIPBOARD_CMD "| xclip"
set fish_greeting ""

function fish_user_key_bindings
	fish_vi_key_bindings
end

alias l "ls -l"

function task
    /usr/bin/task $argv
    /usr/bin/task sync
end

set -gx PATH /opt/cuda/bin $PATH
set -gx XDG_CONFIG_HOME $HOME/.config
alias scp-calzone "scp -oProxyCommand=\"ssh -W %h:%p nweninge@pizza.cs.ualberta.ca\""
