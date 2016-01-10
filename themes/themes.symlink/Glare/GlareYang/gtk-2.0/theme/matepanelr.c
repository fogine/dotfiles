style "matepanel"{
xthickness=0
ythickness=0
GtkButton::inner-border={2,2,2,2}
GtkButton::image-spacing=5
fg[NORMAL]="grey"
fg[SELECTED]="grey"
fg[PRELIGHT]="grey"
fg[ACTIVE]="grey"
fg[INSENSITIVE]="grey"
bg[NORMAL]="black"
bg[PRELIGHT]="black"
bg[SELECTED]="black"
bg[ACTIVE]="black"
bg[INSENSITIVE]="black"
text[NORMAL]="white"
text[PRELIGHT]="white"
text[ACTIVE]=@hilighttext
text[SELECTED]=@hilighttext
text[INSENSITIVE]="grey"
font_name="bold"
engine""{}}
class "*PanelWidget*" style "matepanel"
widget_class "*PanelWidget*" style "matepanel"
widget_class "*MatePanelApplet*" style "matepanel"
widget_class "*PanelToplevel*" style "matepanel"

style "matepanelmenu"{
xthickness=0
ythickness=0
GtkButton::inner-border={2,2,2,2}
GtkButton::image-spacing=5
fg[NORMAL]="grey"
fg[SELECTED]="white"
fg[PRELIGHT]="white"
fg[ACTIVE]="white"
fg[INSENSITIVE]="grey"
bg[NORMAL]="black"
bg[PRELIGHT]=@hilight
bg[SELECTED]=@hilight
bg[ACTIVE]=@hilight
bg[INSENSITIVE]="black"
text[NORMAL]="white"
text[PRELIGHT]="white"
text[ACTIVE]=@hilighttext
text[SELECTED]=@hilighttext
text[INSENSITIVE]="grey"
font_name="bold"
engine""{}}
widget "*PanelMenuBar*" style "matepanelmenu"

style "matepanelpager"{
xthickness=0
ythickness=0
fg[NORMAL]="grey"
fg[SELECTED]="black"
fg[PRELIGHT]="grey"
fg[ACTIVE]=shade (0.9,"white")
fg[INSENSITIVE]="grey"
bg[NORMAL]=shade (0.2,"white")
bg[PRELIGHT]=shade (0.2,"white")
bg[SELECTED]=@hilight
bg[ACTIVE]=shade (0.9,"white")
bg[INSENSITIVE]=shade (0.9,"white")
text[NORMAL]="white"
text[PRELIGHT]="white"
text[ACTIVE]="white"
text[SELECTED]="white"
text[INSENSITIVE]="grey"
engine""{}}
widget_class "*MatePanelApplet*Pager*" style "matepanelpager"

style "matepaneltsklist"{
xthickness=0
ythickness=0
fg[NORMAL]="grey"
fg[SELECTED]="black"
fg[PRELIGHT]="white"
fg[ACTIVE]=shade (0.9,"white")
fg[INSENSITIVE]="grey"
bg[NORMAL]="black"
bg[PRELIGHT]="black"
bg[SELECTED]="black"
bg[ACTIVE]="black"
bg[INSENSITIVE]="black"
text[NORMAL]="white"
text[PRELIGHT]="white"
text[ACTIVE]="white"
text[SELECTED]="white"
text[INSENSITIVE]="grey"
font_name="bold"
engine""{}}
widget_class "*MatePanelApplet*Tasklist*" style "matepaneltsklist"
