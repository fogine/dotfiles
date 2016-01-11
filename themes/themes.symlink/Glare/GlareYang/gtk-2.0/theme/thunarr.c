##no location button style(srsly, who needs this...)

#fix thunars small location entry
style "thunarentry"{
ythickness=2}
widget_class "*ThunarLocationEntry*"style "thunarentry"

#unstyle paned
style "thunarpaned"{
xthickness=0
ythickness=0
GtkPaned::handle-size=0}
widget_class "ThunarWindow*Paned*"style "thunarpaned"

#borderless + bgpixmap
style "thunarshortcuts"{
xthickness=0
ythickness=0
engine"pixmap"{
image{
function=FLAT_BOX
file="../theme/images/thunar_sidebar.svg"
state=NORMAL
stretch=TRUE
border={0,1,0,0}}}}
widget_class "*ThunarShortcuts*"style "thunarshortcuts"
widget_class "*ThunarTreeView*"style "thunarshortcuts"

#keep bottom border for statusbar
style "thunariconview"{
xthickness=0
ythickness=1
engine"pixmap"{
image{
function=SHADOW
shadow=IN
file="../theme/images/thunar_iconview_border.svg"
stretch=TRUE
border={0,0,0,1}}}}
widget_class "*ThunarIconView*"style "thunariconview"
widget_class "*ThunarCompactView*"style "thunariconview"
widget_class "*ThunarDetailsView*"style "thunariconview"

widget "*ThunarEmblemChooser*"style"gtknotebookbgwhite"

#fix margins
style "thunarstatusbar"{
xthickness=0
ythickness=0}
widget "*ThunarWindow*Statusbar*"style "thunarstatusbar"
