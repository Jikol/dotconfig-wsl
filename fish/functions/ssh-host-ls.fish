function ssh-list
    set path "/mnt/c/Users/Jikol/.ssh/config"
    if test -f $path
        set -l hosts
        set -l host_names
        grep -E '^\s*(Host|HostName)\s+' $path | while read -l line
            echo $line
            #if echo $line | string match -qr '^\s*Host\s+'
            #    set -a hosts (string split -r " " $line)[-1]
            #end
            #if echo $line | string match -qr '^\s*HostName\s+'
            #    set -a host_names (string split -r " " $line)[-1]
            #end
        end
        #for i in (seq (count $hosts))
        #    echo "$hosts[$i] -> $host_names[$i]"
        #end
    else
        echo "No SSH config file found at $path"
    end
end
