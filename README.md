# archcraft-OB-nightlight
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

2) Drop the simple `nightlight` script into your OB theme script folder, (or create one)
`~/.config/openbox-themes/themes/YOUR-THEME/polybar/scripts`
This script just acts as an ON/OFF switch in your polybar.
See `scripts` folder in this repo for the file.

3) EDIT your openbox theme's `apply.sh` file to auto-start gummy when your theme loads.
These 2 small edits are detailed in the file `edits-to-apply.sh` in this repo.

4) Add the polybar button.

  a) Add the code block to modules.ini as described in 'edits-to-modules.ini' in this repo
  
  b) Finally, just add the 'nightlight' keyword to your polybar layout. This is on the file `~/.config/openbox-themes/themes/defaultish/polybar/config.ini' scroll down & find the section:
  
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
