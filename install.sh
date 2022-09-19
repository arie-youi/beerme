local token="$1"
local major=0
local minor=0
local patch=0

if egrep '^[0-9]+\.[0-9]+\.[0-9]+' <<<"$token" >/dev/null 2>&1 ; then
    # It has the correct syntax.
    local n=${token//[!0-9]/ }
    local a=(${n//\./ })
    major=${a[0]}
    minor=${a[1]}
    patch=${a[2]}
fi

echo "$major $minor $patch"

if [ "$major" -ge 6 && "$minor" -ge 20 ]; then
    brew bundle
elif [""]
fi
