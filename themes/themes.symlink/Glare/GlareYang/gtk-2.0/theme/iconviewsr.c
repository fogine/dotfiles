style"gtkiconviews"{
xthickness=0
ythickness=0
bg[SELECTED]=@hilight
text[SELECTED]=@hilighttext
GtkIconView::selection-box-alpha=40
GtkIconView::selection-box-color=@hilight}
class"GtkIconView"style"gtkiconviews"

style"xfdesktop-icon-view"{
font_name="bold"
base[NORMAL]=@hilight
base[SELECTED]=@hilight
base[ACTIVE]=@hilight
fg[NORMAL]=@hilighttext
fg[SELECTED]=@hilighttext
fg[ACTIVE]=@hilighttext
}
class"XfdesktopIconView"style"xfdesktop-icon-view"

### icon paddings
style "all"{
xthickness=0
ythickness=0
GtkWidget::focus_padding=4}
widget_class "*ExoIconView"style "all"
