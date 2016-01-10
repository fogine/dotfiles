#!/bin/sh
if [ ! -t 0 ]; then
	x-terminal-emulator -e "$0"
	exit 0
fi
basedir="$(dirname "$(readlink -f "${0}")")"
cd "$basedir"
if [ ! -f x-changecolor.sh ]; then
	exit 1
fi
color="$1"
case $color in
	-c|--color)
	newcolor="$2";;
esac
###things we need here
type convert >/dev/null 2>&1 &&
type composite >/dev/null 2>&1 &&
type sed >/dev/null 2>&1 &&
type bc >/dev/null 2>&1 &&
type tr >/dev/null 2>&1 &&
type 7z >/dev/null 2>&1 &&
type find >/dev/null 2>&1 && 
type awk >/dev/null 2>&1 &&
type make >/dev/null 2>&1||_missingdep=true
case $_missingdep in
	true)
		printf "You either miss Imagemagick, awk, sed, bc, tr, 7z(p7zip) or make! Aborting!\n"
		exit 1;;
esac
###set the color
if [ -z ${newcolor+x} ]; then 
	if type yad >/dev/null 2>&1; then
		newcolor=$(yad --color --init-color=#407dec --title="Please select a new #RRGGBB hilight color")
	elif type qarma >/dev/null 2>&1; then
		newcolor=$(qarma --color-selection --color=#407dec --title="Please select a new #RRGGBB hilight color")
	else
		read -p "Please enter your new hilight color in #RRGGBB(The '#' is a must!, #407dec is currently set): " newcolor
	fi
fi
if [ -z ${newcolor+x} ]; then
	printf "no color was was selected, aborting!"
	exit 1
fi
###some fail colors(colors already used by theme)
case "${newcolor//#/}|tr '[:upper:]' '[:lower:]" in
	ff00ff|ffffff|ec4040|4a4a4a|282828|1a1a1a|1d1d1d|40acee|bf33de|383838|333333|888888|f5f5f5|bf33de|e6e6e6|5a5a5a|999999|dbdbdb|f1f1f1|fbfbfb)
		printf "this color is not available, aborting!"
		exit 1;;
esac
###convert hex to rgb
newcolorhexup=$(echo "$newcolor"|sed 's/#//'|tr '[:lower:]' '[:upper:]')
rhexup=$(echo $newcolorhexup|cut -c-2)
ghexup=$(echo $newcolorhexup|cut -c3-4)
bhexup=$(echo $newcolorhexup|cut -c5-6)
r=$(echo "ibase=16; $rhexup"|bc)
g=$(echo "ibase=16; $ghexup"|bc)
b=$(echo "ibase=16; $bhexup"|bc)
newcolorrgb="$r,$g,$b"
####create a darker new color
wardark=$(expr $r - 33)
wagdark=$(expr $g - 21)
wabdark=$(expr $b - 0)
#####no negative numbers
if [ "$wardark" -lt "0" ]; then
	wardark=$(expr $wardark - $wardark)
fi
if [ "$wagdark" -lt "0" ]; then
	wagdark=$(expr $wagdark - $wagdark)
fi
if [ "$wabdark" -lt "0" ]; then
	wabdark=$(expr $wabdark - $wabdark)
fi
warhexdark=$(echo "obase=16; $wardark"|bc)
waghexdark=$(echo "obase=16; $wagdark"|bc)
wabhexdark=$(echo "obase=16; $wabdark"|bc)
#####make sure hex is 2 bin digits
if [ ${#warhexdark} -lt 2 ]; then
	warhexdark="$warhexdark$warhexdark"
fi
if [ ${#waghexdark} -lt 2 ]; then
	waghexdark="$waghexdark$waghexdark"
fi
if [ ${#wabhexdark} -lt 2 ]; then
	wabhexdark="$wabhexdark$wabhexdark"
fi
#add the number sign
newcolordarkhex="#${warhexdark}${waghexdark}${wabhexdark}"
#an even darker color for the openbox themes
warddark=$(expr $wardark - 33)
wagddark=$(expr $wagdark - 21)
wabddark=$(expr $wabdark - 0)
#####no negative numbers
if [ "$warddark" -lt "0" ]; then
	warddark=$(expr $warddark - $warddark)
fi
if [ "$wagddark" -lt "0" ]; then
	wagddark=$(expr $wagddark - $wagddark)
fi
if [ "$wabddark" -lt "0" ]; then
	wabddark=$(expr $wabddark - $wabddark)
fi
warhexddark=$(echo "obase=16; $warddark"|bc)
waghexddark=$(echo "obase=16; $wagddark"|bc)
wabhexddark=$(echo "obase=16; $wabddark"|bc)
#####make sure hex is 2 bin digits
if [ ${#warhexddark} -lt 2 ]; then
	waghexddark="$warhexddark$warhexddark"
fi
if [ ${#waghexddark} -lt 2 ]; then
	waghexddark="$waghexddark$waghexddark"
fi
if [ ${#wabhexddark} -lt 2 ]; then
	wabhexddark="$wabhexddark$wabhexddark"
fi
#add the number sign
newcolorddarkhex="#${warhexddark}${waghexddark}${wabhexddark}"
###recolor the xfwm/ui themes
_folders="xfwm4 GlareYang GlareYin xfce-notify-4.0 balou"
for _folder in $_folders; do
	cd $_folder
	find "$basedir/$_folder" -type f -exec sed -i 's/#407dec/'$newcolor'/g' {} \;
	find "$basedir/$_folder" -type f -exec sed -i 's/64,125,236/'$newcolorrgb'/g' {} \;
	find "$basedir/$_folder" -type f -name '*.png' -exec convert {} -define png:format=png32 -fill "$newcolor" -opaque "#407dec" {} \;
	case ${PWD##*/} in
		GlareYang|GlareYin)
			sed -i 's/#2c55a1/'$newcolordarkhex'/g' openbox-3/themerc
			sed -i 's/#0e3783/'$newcolorddarkhex'/g' openbox-3/themerc;;
	esac
	cd $basedir
done
### EXTRAS ###
cd EXTRAS
###config files
find "ConfigFiles" -type f -exec sed -i 's/#407dec/'$newcolor'/g' {} \;
find "ConfigFiles" -type f -exec sed -i 's/64,125,236/'$newcolorrgb'/g' {} \;
###Old WM themes
find "WinDecos" -type f -exec sed -i 's/#407dec/'$newcolor'/g' {} \;
find "WinDecos" -type f -exec sed -i 's/64,125,236/'$newcolorrgb'/g' {} \;
find "WinDecos" -type f -name '*active.png' -not -name "*inactive.png" -not -path "*cupertino*" -exec convert {} -define png:format=png32 -fill "$newcolor" -opaque "#407dec" {} \;
###Mozilla
cd PaleMoonFixes
cd Glare
make clean
make
cd ../..
###Winamp Skin
cd Winamp2.xSkin
_folders="Glare Glare-qmmp"
for _folder in $_folders; do
	cd $_folder
	find "$basedir/EXTRAS/Winamp2.xSkin/$_folder" -type f -exec sed -i 's/#407dec/'$newcolor'/g' {} \;
	find "$basedir/EXTRAS/Winamp2.xSkin/$_folder" -type f -exec sed -i 's/64,125,236/'$newcolorrgb'/g' {} \;
	find "$basedir/EXTRAS/Winamp2.xSkin/$_folder" -type f -exec sed -i 's/31,104,236/'$wardark,$wagdark,$wabdark'/g' {} \;
	find "$basedir/EXTRAS/Winamp2.xSkin/$_folder" -type f -name '*.png' -exec convert {} -define png:format=png32 -fill "$newcolor" -opaque "#407dec" {} \;
	find "$basedir/EXTRAS/Winamp2.xSkin/$_folder" -type f -name '*.png' -exec convert {} -define png:format=png32 -fill "$newcolordarkhex" -opaque "#2c55a1" {} \;
	make clean
	make
	cd ..
done
cd ..
####create a colored wallpaper in the current resolution for feh, nitrogen, lxqt & co
cd $basedir
if type xdpyinfo >/dev/null 2>&1; then
	desktopres=$(xdpyinfo|grep 'dimensions:'|awk '{print $2}')
elif type xrandr >/dev/null 2>&1; then
	desktopres=$(xrandr|grep '*'|awk '{print $1}'|head -1)
else
	#if we fail create a big fat wp
	desktopres="4096x2160"
fi
convert -size $desktopres gradient:$newcolordarkhex-$newcolor /tmp/glarewpgradient.png
composite -tile EXTRAS/Wallpapers/Patterns/Glare_lines_trans.png /tmp/glarewpgradient.png EXTRAS/Wallpapers/Fixed/Glare_colorlines.png
cp -f EXTRAS/Wallpapers/Fixed/Glare_colorlines.png EXTRAS/LXQtTheme/Glare/images/Glare_colorlines.png
###modify this script, too
#ntms thats dumb the script will mostly only work once...
sed -i 's/#407dec/'$newcolor'/g' x-changecolor.sh
sed -i 's/64,125,236/'$newcolorrgb'/g' x-changecolor.sh
sed -i 's/#2c55a1/'$newcolordarkhex'/g' x-changecolor.sh
sed -i 's/#0e3783/'$newcolorddarkhex'/g' x-changecolor.sh

printf "\n\ndone\n\n"
