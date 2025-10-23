# Recursively clones  or fetches "submodules" from repo.txt into ./
set -x
while read -r url; do
    url=${url%$'\r'}
    [ -z "$url" ] && continue
    path=$(basename "$url" .git)
    if [ -d "$path/.git" ]; then
        echo "Fetching $path..."
        (cd "$path" && git fetch)
    else
        echo "Cloning $url -> $path"
        git clone "$url" "$path"
    fi

    if [ -f "$path/update.sh" ]; then
        (cd "$path" && bash update.sh)
    fi
done < repos.txt
