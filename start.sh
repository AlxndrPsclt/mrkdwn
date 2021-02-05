#!/usr/bin/env sh

ls static/markdown/* | entr ./convert.sh /_ &
python -m http.server 8000 &
surf localhost:8000/index.html
