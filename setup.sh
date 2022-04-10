#!/usr/bin/env bash
set -euo pipefail

files="
/usr/local/bin/api
/etc/systemd/system/api.service
"

hasErr=""
for file in $files; do
    if [ -f "$file" ]; then
        echo "$file"
        hasErr="!"
    fi
done

if [[ $hasErr != "" ]]; then
    echo "Program can't setup while has this files."
    exit 1
fi


curl -LO https://github.com/jusan-singularity/track-devops-systemd-api/releases/download/v0.1/api
chmod 755 ./api
sudo mv api /usr/local/bin/
sudo cp api.service /etc/systemd/system/
sudo systemctl start api
sudo systemctl status api
echo "setup.sh finished"