#!/bin/bash
if [ ! -t 0 ]; then
	x-terminal-emulator -e "$0"
	exit 0
fi
themes="GlareYang GlareYin"
gtk3themes="gtk-3.14 gtk-3.16 gtk-3.18"
basedir="$(dirname "$(readlink -f "${0}")")"
#########
if type glib-compile-resources >/dev/null 2>&1; then
	printf "glib-compile-resources found\n"
else
	printf "glib-compile-resources not found - Aborting!\n"
	exit 1
fi

build_gresource() {
	mv $basedir/$theme/$gtk3theme/gtk.css $basedir/$theme/$gtk3theme/gtk-main.css
	echo -e "<?xml version=\x221.0\x22 encoding=\x22UTF-8\x22?>\n<gresources>\n<gresource prefix=\x22/org/gnome/$theme\x22>\n" >>$basedir/$theme/$gtk3theme/gtk.gresource.xml
	for images in `find -maxdepth 2 -wholename "./*.svg" | sed "s|^\./||"`; do
		echo -e "<file preprocess=\x22to-pixdata\x22>$images</file>" >>$basedir/$theme/$gtk3theme/gtk.gresource.xml
	done
	echo -e "<file>theme/colors.ini</file>" >>$basedir/$theme/$gtk3theme/gtk.gresource.xml
	echo -e "<file>themedark/colors.ini</file>" >>$basedir/$theme/$gtk3theme/gtk.gresource.xml
	for css in `find -maxdepth 2 -wholename "./*.css" | sed "s|^\./||"`; do
		echo -e "<file>$css</file>" >>$basedir/$theme/$gtk3theme/gtk.gresource.xml
	done
	echo -e "</gresource>\n</gresources>\n" >>$basedir/$theme/$gtk3theme/gtk.gresource.xml
	glib-compile-resources $basedir/$theme/$gtk3theme/gtk.gresource.xml
	echo -e "@import url(\x22resource:///org/gnome/$theme/gtk-main.css\x22);" >>$basedir/$theme/$gtk3theme/gtk.css
	echo -e "@import url(\x22settings.css\x22);" >>$basedir/$theme/$gtk3theme/gtk.css
	if [ -d "$basedir/$theme/$gtk3theme.gresource" ]; then
		rm -drf $basedir/$theme/$gtk3theme.gresource
	fi
	mkdir -pv $basedir/$theme/$gtk3theme.gresource
	mv gtk.css $basedir/$theme/$gtk3theme.gresource
	cp settings.ini $basedir/$theme/$gtk3theme.gresource
	cp settings.css $basedir/$theme/$gtk3theme.gresource
	mv gtk.gresource $basedir/$theme/$gtk3theme.gresource
	mv $basedir/$theme/$gtk3theme/gtk-main.css $basedir/$theme/$gtk3theme/gtk.css
	rm -f $basedir/$theme/$gtk3theme/gtk.gresource.xml
}

for theme in $themes; do
	cd $theme
	for gtk3theme in $gtk3themes; do
		cd $gtk3theme
		build_gresource
		cd ..
	done
	cd ..
done
printf "\n\ndone\n"
