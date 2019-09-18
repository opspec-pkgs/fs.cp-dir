#!/usr/bin/env sh
cmd='rsync -a'
cmd=$(printf "%s --chown '%s'" "$cmd" "$chown")

# handle opts
if [ "$overwrite" = "true" ]; then
cmd=$(printf "%s --ignore-existing" "$cmd")
fi

cmd=$(printf "%s /src/ /dst/%s" "$cmd" "${dstPath#/}")

eval "$cmd"