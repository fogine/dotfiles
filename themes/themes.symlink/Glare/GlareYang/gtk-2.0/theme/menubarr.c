style"gtkmenubar"{
xthickness=0
ythickness=1
GtkMenuBar::shadow-type=GTK_SHADOW_NONE
GtkMenuBar::internal-padding=2
GtkMenuItem::horizontal-padding=0
bg[NORMAL]=@menubar
bg[PRELIGHT]=@hilight
bg[SELECTED]=@menubar
bg[ACTIVE]=@menubar
bg[INSENSITIVE]=@window
fg[NORMAL]=@menubartext
fg[PRELIGHT]=@hilighttext
fg[SELECTED]=@menubartext
fg[ACTIVE]=@menubartext
fg[INSENSITIVE]=@inactivewindowtext
engine"pixmap"{
image{
function=SHADOW
shadow=NONE
orientation=HORIZONTAL
file="../theme/images/menubar_horizontal.svg"
border={0,0,1,2}
stretch=TRUE}
image{
function=SHADOW
shadow=NONE
orientation=VERTICAL
file="../theme/images/menubar_vertical.svg"
border={2,1,0,0}
stretch=TRUE}}}
class"GtkMenuBar"style"gtkmenubar"
widget"*GtkMenuBar*GtkMenuItem"style"gtkmenubar"
widget_class"*.<GtkMenuBar>*<GtkLabel>*"style"gtkmenubar"

style"gtkmenubar"{
GtkMenuBar::shadow-type=GTK_SHADOW_NONE
GtkMenuBar::internal-padding=2
GtkMenuItem::horizontal-padding=5
bg[NORMAL]=@menubar
bg[PRELIGHT]=@hilight
bg[SELECTED]=@menubar
bg[ACTIVE]=@menubar
bg[INSENSITIVE]=@window
fg[NORMAL]=@menubartext
fg[PRELIGHT]=@hilighttext
fg[SELECTED]=@menubartext
fg[ACTIVE]=@menubartext
fg[INSENSITIVE]=@inactivewindowtext}
widget_class"*.<GtkMenuBar>*<GtkMenuItem>"style"gtkmenubar"
