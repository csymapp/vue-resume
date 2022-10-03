#!/bin/sh

chromium-browser --headless \
                 --disable-gpu \
                 --disable-software-rasterizer \
                 --disable-dev-shm-usage \
                 --no-sandbox \
                 --print-to-pdf="$GITHUB_ACTION_PATH/dist/William Hatcher - Résumé.pdf" \
                 --hide-scrollbars \
                 file://$GITHUB_ACTION_PATH/dist/index.html
