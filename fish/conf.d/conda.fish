# Init conda configuration.
if test -f $CONDA_EXE
	eval $CONDA_EXE "shell.fish" "hook" $argv | source
end