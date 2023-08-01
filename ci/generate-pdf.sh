#!/bin/sh

sudo apt-get install jq
name=$(jq -r '.basics.name' ./resume-data.json)
chromium-browser --headless \
                 --disable-gpu \
                 --disable-software-rasterizer \
                 --disable-dev-shm-usage \
                 --no-sandbox \
                 --print-to-pdf="$GITHUB_WORKSPACE/dist/$name - Résumé.pdf" \
                 --hide-scrollbars \
                 file://$GITHUB_WORKSPACE/dist/index.html
