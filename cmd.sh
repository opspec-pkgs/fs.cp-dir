#!/usr/bin/env sh
cmd='mv'

# copy src so we can set desired ownership w/out mutating it
cp -rf /src /srcCopy
chown -R "$chown" /srcCopy

# handle opts
if [ "$overwrite" = "false" ]; then
cmd=$(printf "%s --no-clobber" "$cmd")
fi

cmd=$(printf "%s /srcCopy/* /dst%s" "$cmd" "${dstPath#/}")

eval "$cmd"