#!/usr/bin/env sh
cmd='rsync -av'
cmd=$(printf "%s --chown '%s'" "$cmd" "$chown")

# handle opts
if [ "$overwrite" = "true" ]; then
cmd=$(printf "%s --ignore-existing" "$cmd")
fi

cmd=$(printf "%s /src/* /dst/%s" "$cmd" "${dstPath#/}")
echo $cmd

eval "$cmd"