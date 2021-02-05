#!/usr/bin/env sh

ls static/markdown/* | entr ./convert.sh /_ &
~/apps/suckless/focus-st/st -c "focus" -f "Cousine for Powerline:style=Regular:size=15" ~/.config/perso/focus/focusvim static/markdown/content.md &
python -m http.server 8000 &
surf localhost:8000/index.html
