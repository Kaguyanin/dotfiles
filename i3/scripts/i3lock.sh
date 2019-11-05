#!/bin/sh

A='#282a36'    # background
B='#282a3600'  # blank
C='#f8f8f222'  # clear ish
D='#bd93f9cc'  # default
R='#50fa7bbb'  # ring
T='#ff5555ee'  # text
W='#ff79c6bb'  # wrong
V='#8be9fdbb'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--textcolor=$T        \
--timecolor=$D        \
--datecolor=$D        \
--layoutcolor=$T      \
--keyhlcolor=$R       \
--bshlcolor=$W        \
\
--screen 0            \
--color=$A            \
--clock               \
--indicator           \
--timestr="%I:%M %p"  \
--datestr="%m/%d/%Y"  \
