# Disable screen saver
xset s off
xset dpms 600

# Auto-lock after 10 minutes
xautolock -time 10 -locker slock &

# turn off numlock
numlockx &

# DPI
xrandr --dpi 96

# music
mpd &

# wallpaper
xwallpaper --zoom ~/Pictures/wallpaper/MojaveNight.jpg

# hide mouse when watching
unclutter &
# hide mouse when typing
xbanish &

# status
slstatus &

# dwm
while :; do
	ssh-agent dwm
done
exec dwm
