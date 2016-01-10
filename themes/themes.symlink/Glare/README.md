A simple toolkit independent theme for a less distracted desktop experience http://sixsixfive.deviantart.com/art/Glare-494114516

# Contents

* [Features](#features)
* [Install](#install)
* [Set the theme](#set-the-theme)
* [FAQ](#faq)
* [Bugs](#bugs)
* [Todo](#todo)

###Features

* Dark and bright versions.
* Customizable selection color.
* Very lightweight, there are no animations or transitions.
* functionality > eye candy.
* GTK3: real tabs 
* GTK3: Headerbars are drawn as toolbars. I recommend to use PCMans [nocsd hack](https://github.com/PCMan/gtk3-nocsd).
* GTK3: uses colorful icons by default (better integration into other desktop environments)

#####Whats included?

* GTK+ V2 theme(req. the mist and pixbuf GTK+ engine)
* GTK+ V3.14/16 theme(those themes are abandoned)
* GTK+ V3.18 theme(the current default GTK3 theme)
* Qt4/5([Kvantum engine](https://github.com/tsujan/Kvantum/tree/master/Kvantum)) themes
* Xfwm4, Metacity/Marco theme (there are many more in the EXTRAS/WinDecos folder)
* matching Winamp 2.x(QMMP, Audacious) Skin
* LXQt panel theme
* SLiM theme(req. DejaVu Sans)
* A tab and color fix for the Pale Moon Web Browser
* and more tiny stuff

###Install

- Open a terminal, enter the theme dir: `cd ~/.themes` and get the theme: 

```
git clone https://github.com/sixsixfive/Glare.git Glare
```

- Link the sub themes:

```
ln -s Glare/GlareYang
ln -s Glare/GlareYin
```

* NOTE: if you use GTK3 <3.18 you need to relink the gtk-3.14/16 folder to gtk-3.0.

#####Optional

- If you want to change the blue highlight color to something else:

 * needs sed, imagemagick(convert), 7z, make, bc, and find! - you may should install [yad](http://sourceforge.net/projects/yad-dialog) or [qarma-qt5](https://github.com/luebking/qarma) for a better color selection.

```
sh x-changecolor.sh
```

- You can also build GTK3 [gresource](https://developer.gnome.org/gio/stable/GResource.html#GResource.description) files:

 * needs sed, find & bash

```
bash x-gtk3-buildgresource.sh
```

You might want to have a look into the EXTRA folder for more content/themes.

###Set the theme
##### xfconf(Xfce only):

```
xfconf-query -c xsettings -p /Net/ThemeName -s GlareYang
xfconf-query -c xfce4-notifyd -p /theme -s Glare
xfconf-query -c xfwm4 -p /general/theme -s Glare
```
#####manually

for GTK2 create a file ~/.gtkrc-2.0 with the following content:

```
include "$GTKTHEMEDIR/GlareYang/gtk-2.0/gtkrc"
gtk-toolbar-style=GTK_TOOLBAR_ICONS
```

for GTK3 create a file ${XDG_CONFIG_HOME}/gtk-3.0/settings.ini with the following content:

```
[Settings]
gtk-theme-name=GlareYang
gtk-application-prefer-dark-theme=false
gtk-menu-images=true
```
*Note there are many more settings for each GTK toolkit: [GTK2](https://developer.gnome.org/gtk2/stable/GtkSettings.html#GtkSettings.properties), [GTK3](https://developer.gnome.org/gtk3/stable/GtkSettings.html#GtkSettings)

for Qt4 use qtconfig and for Qt5 use [Qt5ct](http://sourceforge.net/projects/qt5ct/)

###FAQ:

##### Before any questions please have a look into the settings files!

```
    ${themedir}/Glare(Yang/Yin)/gtk-2.0/settings.ini
    ${themedir}/Glare(Yang/Yin)/gtk-3.0/settings.css
```

##### Where to install/link the extra themes/configs?

Note: the dirs might differ in your Distribution!

###### theme dirs(SYSPREFIX=/usr):

- KDE color scheme

```
/usr/share/color-schemes/<theme>.colors
/usr/share/apps/color-schemes/<theme>.colors
~/.local/share/apps/color-schemes/<theme>.colors
~/.kde/share/apps/color-schemes/<theme>.colors
```
- Qt4 color scheme(not needed anymore) 

```
/etc/xdg/Trolltech.conf
~/.config/Trolltech.conf
```

- KDE settings(only if there is no kde installed, and only needed to set the colors of KDE apps without systemsettings)

```
~/.kde/share/config/kdeglobals
```

- Aurorae(abandoned, the only available Aurora theme is the old default theme!((EXTRAS/WinDecos/Glare-default)))

```
/usr/share/apps/aurorae/themes/<themedir>
~/.kde/share/apps/aurorae/themes/<themedir>
```

- very simple compton settings


```
/etc/xdg/compton.conf
~/.compton.conf

```
- LXQt 0.10 theme

```
/usr/share/lxqt/themes/<themedir>
```

- Qmmp(note that the default theme is based on Glare)

```
$HOME/.qmmp/skins/<theme>.wsz
/usr/share/qmmp/skins/<theme>.wsz
```

- Audacious

```
/usr/share/audacious/Skins/<theme>.wsz
```

- Promoe(copy the folder instead of the packaged theme)

```
/usr/share/promoe/skins/<themedir>
```

- SliM

```
/usr/share/slim/themes/<themedir>
```

- PaleMoon
  * just drag and drop the xpi into PaleMoon(or open it with PaleMoon)

###Bugs:

* since GTK3.16 I use dots as arrows because GTK3 makes it impossible to theme arrows within the toolkit theme.

###Todo:

* more consistent look for the dark themes
* improve the theme
