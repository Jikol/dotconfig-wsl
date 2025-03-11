# Init conda configuration.
if test -f $XDG_DATA_HOME/conda/bin/conda
	eval $XDG_DATA_HOME/conda/bin/conda "shell.fish" "hook" $argv | source
end