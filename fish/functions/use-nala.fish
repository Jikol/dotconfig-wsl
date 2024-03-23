function apt
	command nala $argv
end

function sudo
	if test "$argv[1]" = "apt"
		command sudo nala $argv[2..-1]
	else
		command sudo $argv
	end
end