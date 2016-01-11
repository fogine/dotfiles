style"gtkwidget"{
xthickness=1
ythickness=1
fg[NORMAL]=@windowtext
fg[PRELIGHT]=@windowtext
fg[SELECTED]=@windowtext
fg[ACTIVE]=@windowtext
fg[INSENSITIVE]=@inactivewindowtext
bg[NORMAL]=@window
bg[PRELIGHT]=@window
bg[SELECTED]=@window
bg[ACTIVE]=@window
bg[INSENSITIVE]=@window
base[NORMAL]=@basebg
base[PRELIGHT]=@basebg
base[ACTIVE]=@hilight
base[SELECTED]=@hilight
base[INSENSITIVE]=@basebg
text[NORMAL]=@basetext
text[PRELIGHT]=@basetext
text[ACTIVE]=@hilighttext
text[SELECTED]=@hilighttext
text[INSENSITIVE]=@inactivewindowtext
GtkWidget::link_color=@url
GtkHTML::link-color=@url
GtkIMHtml::hyperlink-color=@url
GnomeHRef::link-color=@url
GtkWidget::visited-link-color=@visitedurl
GtkHTML::visited-link-color=@visitedurl
GtkIMHtml::hyperlink-visited-color=@visitedurl
GtkTreeView::even-row-color=@basebg
GtkTreeView::odd-row-color=@aternatebase
GtkWidget::wide-separators=1
GtkWidget::separator-height=1
GtkWidget::separator-width=1
GtkCheckButton::indicator-size=13 #checks and radios need to be 13px or qgtk will scale them to 13px in menus
GtkCheckMenuItem::indicator-size=13 #^^
GtkRadioButton::indicator-size=13 #^^
GtkRadioMenuItem::indicator-size=13 #^^
GtkExpander::expander-size=10
GtkWindow::resize-grip-height=15
GtkWindow::resize-grip-width=17
###tmp disable focus
GtkWidget::focus-line-width=0
GtkWidget::focus-padding=0
GtkWidget::interior-focus=0
engine"pixmap"{
image{
function=SHADOW
shadow=IN
file="../theme/images/shadow.svg"
border={1,1,1,1}
stretch=TRUE}
image{
function=SHADOW
shadow=ETCHED_IN
file="../theme/images/shadow.svg"
border={1,1,1,1}
stretch=TRUE}
image{
function=SHADOW
shadow=OUT
file="../theme/images/shadow.svg"
border={1,1,1,1}
stretch=TRUE}
image{
function=SHADOW
shadow=ETCHED_OUT
file="../theme/images/shadow.svg"
border={1,1,1,1}
stretch=TRUE}
image{
function=SHADOW
shadow=NONE
file="../theme/images/trans.svg"
stretch=FALSE}
##line without detail for open/libreoffice
image{
function=HLINE
file="../theme/images/trans.svg"
stretch=FALSE}
image{
function=HLINE
detail="hseparator"
file="../theme/images/color-dbdbdb.svg"
stretch=FALSE}
image{
function=VLINE
detail="vseparator"
file="../theme/images/color-dbdbdb.svg"
stretch=FALSE}
image{
function=FOCUS
file="../theme/images/trans.svg"
stretch=FALSE}
###handle without detail for qgtk
image{
function=HANDLE
overlay_file="../theme/images/handle_horizontal.svg"
overlay_stretch=FALSE
orientation=VERTICAL}
image{
function=HANDLE
overlay_file="../theme/images/handle_vertical.svg"
orientation=HORIZONTAL
overlay_stretch=FALSE}
image{
function=HANDLE
detail="handlebox"
overlay_file="../theme/images/handle_horizontal.svg"
overlay_stretch=FALSE
orientation=VERTICAL}
image{
function=HANDLE
detail="handlebox"
overlay_file="../theme/images/handle_vertical.svg"
orientation=HORIZONTAL
overlay_stretch=FALSE}
image{
function=HANDLE
orientation=VERTICAL
detail="paned"
overlay_file="../theme/images/handle_horizontal.svg"
overlay_stretch=FALSE}
image{
function=HANDLE
orientation=HORIZONTAL
detail="paned"
overlay_file="../theme/images/handle_vertical.svg"
overlay_stretch=FALSE}
##need to place this here or qgtkstlye will fail
image{
function=RESIZE_GRIP
detail="statusbar"
overlay_file="../theme/images/resize-grip.svg"
overlay_stretch=FALSE}
#####checkboxes need to be here or we need to theme treeview & co...
image{
function=CHECK
state=INSENSITIVE
shadow=OUT
overlay_file="../theme/images/checkbox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=NORMAL
shadow=OUT
overlay_file="../theme/images/checkbox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=PRELIGHT
shadow=OUT
overlay_file="../theme/images/checkbox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=ACTIVE
shadow=OUT
overlay_file="../theme/images/checkbox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=INSENSITIVE
shadow=ETCHED_IN
overlay_file="../theme/images/checkbox_tristate_disabled.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=NORMAL
shadow=ETCHED_IN
overlay_file="../theme/images/checkbox_tristate.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=PRELIGHT
shadow=ETCHED_IN
overlay_file="../theme/images/checkbox_tristate.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=ACTIVE
shadow=ETCHED_IN
overlay_file="../theme/images/checkbox_tristate.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=INSENSITIVE
shadow=ETCHED_OUT
overlay_file="../theme/images/checkbox_tristate_disabled.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=NORMAL
shadow=ETCHED_OUT
overlay_file="../theme/images/checkbox_tristate.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=PRELIGHT
shadow=ETCHED_OUT
overlay_file="../theme/images/checkbox_tristate.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=ACTIVE
shadow=ETCHED_OUT
overlay_file="../theme/images/checkbox_tristate.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=INSENSITIVE
shadow=IN
overlay_file="../theme/images/checkbox_checked_disabled.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=NORMAL
shadow=IN
overlay_file="../theme/images/checkbox_checked.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=PRELIGHT
shadow=IN
overlay_file="../theme/images/checkbox_checked.svg"
overlay_stretch=FALSE}
image{
function=CHECK
state=ACTIVE
shadow=IN
overlay_file="../theme/images/checkbox_checked.svg"
overlay_stretch=FALSE}
#####same for radios
image{
function=OPTION
state=INSENSITIVE
shadow=OUT
overlay_file="../theme/images/radiobox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=NORMAL
shadow=OUT
overlay_file="../theme/images/radiobox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=PRELIGHT
shadow=OUT
overlay_file="../theme/images/radiobox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=ACTIVE
shadow=OUT
overlay_file="../theme/images/radiobox_unchecked.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=INSENSITIVE
shadow=ETCHED_IN
overlay_file="../theme/images/radiobox_tristate_disabled.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=NORMAL
shadow=ETCHED_IN
overlay_file="../theme/images/radiobox_tristate.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=PRELIGHT
shadow=ETCHED_IN
overlay_file="../theme/images/radiobox_tristate.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=ACTIVE
shadow=ETCHED_IN
overlay_file="../theme/images/radiobox_tristate.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=INSENSITIVE
shadow=ETCHED_OUT
overlay_file="../theme/images/radiobox_tristate_disabled.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=NORMAL
shadow=ETCHED_OUT
overlay_file="../theme/images/radiobox_tristate.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=PRELIGHT
shadow=ETCHED_OUT
overlay_file="../theme/images/radiobox_tristate.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=ACTIVE
shadow=ETCHED_OUT
overlay_file="../theme/images/radiobox_tristate.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=INSENSITIVE
shadow=IN
overlay_file="../theme/images/radiobox_checked_disabled.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=NORMAL
shadow=IN
overlay_file="../theme/images/radiobox_checked.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=PRELIGHT
shadow=IN
overlay_file="../theme/images/radiobox_checked.svg"
overlay_stretch=FALSE}
image{
function=OPTION
state=ACTIVE
shadow=IN
overlay_file="../theme/images/radiobox_checked.svg"
overlay_stretch=FALSE}
##expanders!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
image
{
function=EXPANDER
state=NORMAL
expander_style=COLLAPSED
overlay_file="../theme/images/expander-collapsed.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=PRELIGHT
expander_style=COLLAPSED
overlay_file="../theme/images/expander-collapsed.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=ACTIVE
expander_style=COLLAPSED
overlay_file="../theme/images/expander-collapsed.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=INSENSITIVE
expander_style=COLLAPSED
overlay_file="../theme/images/expander-collapsed_disabled.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=NORMAL
expander_style=SEMI_COLLAPSED
overlay_file="../theme/images/expander-collapsed.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=PRELIGHT
expander_style=SEMI_COLLAPSED
overlay_file="../theme/images/expander-collapsed.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=ACTIVE
expander_style=SEMI_COLLAPSED
overlay_file="../theme/images/expander-collapsed.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=INSENSITIVE
expander_style=SEMI_COLLAPSED
overlay_file="../theme/images/expander-collapsed_disabled.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=NORMAL
expander_style=EXPANDED
overlay_file="../theme/images/expander-expanded.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=PRELIGHT
expander_style=EXPANDED
overlay_file="../theme/images/expander-expanded.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=ACTIVE
expander_style=EXPANDED
overlay_file="../theme/images/expander-expanded.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=INSENSITIVE
expander_style=EXPANDED
overlay_file="../theme/images/expander-expanded_disabled.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=NORMAL
expander_style=SEMI_EXPANDED
overlay_file="../theme/images/expander-expanded.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=PRELIGHT
expander_style=SEMI_EXPANDED
overlay_file="../theme/images/expander-expanded.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=ACTIVE
expander_style=SEMI_EXPANDED
overlay_file="../theme/images/expander-expanded.svg"
overlay_stretch=FALSE
}
image
{
function=EXPANDER
state=INSENSITIVE
expander_style=SEMI_EXPANDED
overlay_file="../theme/images/expander-expanded_disabled.svg"
overlay_stretch=FALSE}
###spinbuttons!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
image
{
function=BOX
detail="spinbutton_up"
state=NORMAL
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_up.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
detail = "spinbutton_up"
state=PRELIGHT
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_up.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
detail = "spinbutton_up"
state=ACTIVE
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_up.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
state=INSENSITIVE
detail = "spinbutton_up"
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_up_disabled.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
state=NORMAL
detail = "spinbutton_down"
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_down.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
state=PRELIGHT
detail = "spinbutton_down"
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_down.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
state=ACTIVE
detail = "spinbutton_down"
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_down.svg"
overlay_stretch=FALSE
}
image
{
function = BOX
state=INSENSITIVE
detail = "spinbutton_down"
file="../theme/images/trans.svg"
stretch=FALSE
overlay_file="../theme/images/spinbutton_down_disabled.svg"
overlay_stretch=FALSE}
####################Arows!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
image
{
function=ARROW
state=INSENSITIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-up_insensitive.svg"
overlay_stretch=FALSE
arrow_direction=UP
}
image
{
function=ARROW
state=INSENSITIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_insensitive.svg"
overlay_stretch=FALSE
arrow_direction=DOWN
}
image
{
function=ARROW
state=INSENSITIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-left_insensitive.svg"
overlay_stretch=FALSE
arrow_direction=LEFT
}
image
{
function=ARROW
state=INSENSITIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-right_insensitive.svg"
overlay_stretch=FALSE
arrow_direction=RIGHT
}
image
{
function=ARROW
state=NORMAL
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-up_normal.svg"
overlay_stretch=FALSE
arrow_direction=UP
}
image
{
function=ARROW
state=NORMAL
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_normal.svg"
overlay_stretch=FALSE
arrow_direction=DOWN
}
image
{
function=ARROW
state=NORMAL
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-left_normal.svg"
overlay_stretch=FALSE
arrow_direction=LEFT
}
image
{
function=ARROW
state=NORMAL
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-right_normal.svg"
overlay_stretch=FALSE
arrow_direction=RIGHT
}
image
{
function=ARROW
state=ACTIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-up_hover.svg"
overlay_stretch=FALSE
arrow_direction=UP
}
image
{
function=ARROW
state=ACTIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_hover.svg"
overlay_stretch=FALSE
arrow_direction=DOWN
}
image
{
function=ARROW
state=ACTIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-left_hover.svg"
overlay_stretch=FALSE
arrow_direction=LEFT
}
image
{
function=ARROW
state=ACTIVE
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-right_hover.svg"
overlay_stretch=FALSE
arrow_direction=RIGHT
}
image
{
function=ARROW
state=PRELIGHT
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-up_hover.svg"
overlay_stretch=FALSE
arrow_direction=UP
}
image
{
function=ARROW
state=PRELIGHT
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_hover.svg"
overlay_stretch=FALSE
arrow_direction=DOWN
}
image
{
function=ARROW
state=PRELIGHT
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-left_hover.svg"
overlay_stretch=FALSE
arrow_direction=LEFT
}
image
{
function=ARROW
state=PRELIGHT
detail="arrow"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-right_hover.svg"
overlay_stretch=FALSE
arrow_direction=RIGHT
}
image
{
function=TAB
state=INSENSITIVE
detail="optionmenutab"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_normal.svg"
overlay_stretch=FALSE
}
image
{
function=TAB
state=NORMAL
detail="optionmenutab"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_normal.svg"
overlay_stretch=FALSE
}
image
{
function=TAB
state=PRELIGHT
detail="optionmenutab"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_hover.svg"
overlay_stretch=FALSE
}
image
{
function=TAB
state=ACTIVE
detail="optionmenutab"
file="../theme/images/arrow-bg.svg"
stretch=FALSE
overlay_file="../theme/images/arrow-down_hover.svg"
overlay_stretch=FALSE
}}}
class"*GtkWidget*"style"gtkwidget"
widget_class"*XtmProcessWindow*"style"gtkwidget"
