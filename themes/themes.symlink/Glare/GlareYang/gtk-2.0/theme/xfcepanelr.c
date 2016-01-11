###unstyle the whole panel
style "xfcepanelwindow"{
xthickness=0
ythickness=0
GtkButton::inner-border={2,2,2,2}
GtkButton::image-spacing=5
fg[NORMAL]="grey"
fg[SELECTED]="white"
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
engine""{}}
widget_class "*XfcePanelWindow*" style "xfcepanelwindow"
widget "*XfcePanelWindow*" style "xfcepanelwindow"
widget "*XfcePanelImage" style "xfcepanelwindow"

style "xfcepanelpager"{
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
bg[ACTIVE]="black"
bg[INSENSITIVE]="black"
text[NORMAL]="white"
text[PRELIGHT]="white"
text[ACTIVE]="white"
text[SELECTED]="white"
text[INSENSITIVE]="grey"
engine""{}}
widget "XfcePanel*Pager*" style "xfcepanelpager"