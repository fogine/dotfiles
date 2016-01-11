style "libappindicator"{
xthickness=0
ythickness=0
GtkButton::inner-border={2,2,2,2}
GtkButton::image-spacing=5
bg[NORMAL]="black"
bg[PRELIGHT]="black"
bg[SELECTED]="black"
bg[ACTIVE]="black"
bg[INSENSITIVE]="black"
engine""{}}
widget_class "*AppIndicator*" style "libappindicator"
widget "*AppIndicator*" style "libappindicator"
class "*AppIndicator" style "libappindicator"
#old
widget_class "*GtkStatusIcon*" style "libappindicator"
widget "*GtkStatusIcon*" style "libappindicator"
class "*GtkStatusIcon" style "libappindicator"
