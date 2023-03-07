# archcraft-openbox-nightlight
Adding a nightlight (display temperatue shift) tool to Archcraft Openbox & Polybar.

I did this specifically for my archcraft OB (2023.01.23 ISO), but you can use it for any Openbox system.

Gummy is a simple CLI tool for Linux color temperature
`https://github.com/Fushko/gummy`

We cxan easily integrate this into Openbox & Polybar as a GUI plugin.

This is DIY, but very simple. I will cover the steps for beginners.

===================

1) install gummy for arch-based distros
`yay -S gummy`

REBOOT

Give it a quick test if you like. 
```
gummy start
gummy status
gummy -t 3400
gummy -t 6500
gummy stop
```

refer to the gummy page for other distros

INITIATE your gummy preference for the time for nightlight to be active. This will be set in the gummy json file in user dir.

Example ::
`gummy -T 3 -y 06:00 -u 18:00 -i 30 --temperature-max 6500 --temperature-min 3400`

*This part sets the nightlight to kick in at 6pm & return to normal at 6am, with a 30 min transition as it slowly changes from white light to orange light temperature. Please refer to the gummy repo if you would like to cusomise it.*

2) Drop the simple `nightlight` script into your OB theme script folder, (or create one)
`~/.config/openbox-themes/themes/YOUR-THEME/polybar/scripts`
This script just acts as an ON/OFF switch in your polybar.
See `scripts` folder in this repo for the file.

3) SET gummy to auto-start on boot.
For Archcraft create `~/.xprofile` with the content:
```
gummy start &
```
Thats it.

4) Add the polybar button.
  * Add the code block to modules.ini as described in `edits-to-modules.ini` in this repo
  * Finally, just add the *nightlight* keyword to your polybar layout. This is on the file `~/.config/openbox-themes/themes/defaultish/polybar/config.ini` scroll down & find the section:
  
```
# Default
modules-left = 
modules-centre = 
modules-right = 
```
there will be modules listed here, something like this

`modules-right = updates dot volume dot brightness nightlight dot network dot LD battery RD dot-alt LD sysmenu RD`

Just type 'nightlight' where you would like the nightlight icon to appear. In the above line you can see I added it in the middle next to brightness.

Then save the File & you are done.

Reload your theme.
