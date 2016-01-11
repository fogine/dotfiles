style "gimpspinscale"{
xthickness=1
ythickness=1
GtkSpinButton::page-size=0
fg[NORMAL]=@windowtext
fg[SELECTED]=@hilighttext
bg[NORMAL]=@basebg
bg[SELECTED]=@hilight
base[NORMAL]=@basebg
base[SELECTED]=@window
base[ACTIVE]=@window
text[ACTIVE]=@windowtext
text[SELECTED]=@windowtext}
widget"*GimpSpinScale"style "gimpspinscale"

style "gimpspinscalelabel"{
xthickness=0
ythickness=0
text[NORMAL]="#fff"
engine"mist"{}}
widget"*GimpSpinScale*GtkLabel*"style "gimpspinscalelabel"
