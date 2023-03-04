

# Insert the code function below at the bottom of ~/.config/openbox-themes/themes/YOUR-THEME/apply.sh
# before the section
## Execute Script ------


# Start GUMMY ------------------------------
# nightlight 2023.03.04
start_gummy(){
	gummy start && sleep 1 && gummy -T 3 -y 06:00 -u 18:00 -i 30 --temperature-max 6500 --temperature-min 3400
}


# Then add a function call at the end of list in ## Execute Script ------ (nofify_user, create_file, apply_wallpaper, etc)


start_gummy

