## Functions ##
function list-path
	echo (set_color cyan) "Path Variables" (set_color normal)
	set -f path $PATH
	for path in (string split ":" $path)
    if test -n "$path"
      echo $path
    else
    	echo "$path (!not exists)"
    end
  end
end

function list-env
	command env | sort | awk -F '=' '{ printf "%-20s %s\n", $1, $2 }'
end

## Aliases ##
alias envpath="list-path"
alias env="list-env"