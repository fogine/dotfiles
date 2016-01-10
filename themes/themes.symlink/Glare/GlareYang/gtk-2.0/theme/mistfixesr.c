# Work around for http://bugzilla.gnome.org/show_bug.cgi?id=382646
# Note that the work around assumes that the combobox is _not_ in
# appears-as-list mode.
# This style does not affect GtkComboBoxEntry, it does have an effect
# on comboboxes in appears-as-list mode though.
style "mist-text-is-fg-color-workaround"
{
        text[NORMAL]              = @windowtext
        text[ACTIVE]              = @windowtext
        text[INSENSITIVE]         = mix (0.4, @windowtext, shade (0.85, @basebg)) #shaded to bg[INSENSITIVE]
        text[PRELIGHT]            = @windowtext
        text[SELECTED]            = @hilighttext
}
widget_class "*.<GtkComboBox>.<GtkCellView>"   style "mist-text-is-fg-color-workaround"

style "mist-menuitem-text-is-fg-color-workaround"
{
        text[NORMAL]              = @windowtext
        text[ACTIVE]              = @windowtext
        text[INSENSITIVE]         = mix (0.4, @windowtext, shade (0.85, @basebg)) #shaded to bg[INSENSITIVE]
        text[PRELIGHT]            = @hilighttext
        text[SELECTED]            = @hilighttext
}
widget "*.gtk-combobox-popup-menu.*"   style "mist-menuitem-text-is-fg-color-workaround"

# Work around the usage of GtkLabel inside GtkListItems to display text.
# This breaks because the label is shown on a background that is based on the
# base color set.
style "mist-fg-is-text-color-workaround"
{
        fg[NORMAL]            = @windowtext
        fg[ACTIVE]            = @windowtext
        fg[PRELIGHT]          = @windowtext
        fg[SELECTED]          = @hilighttext
        fg[INSENSITIVE]       = mix (0.5, @windowtext, @basebg)
}
widget_class "*<GtkListItem>*" style "mist-fg-is-text-color-workaround"
# The same problem also exists for GtkCList and GtkCTree
# Only match GtkCList and not the parent widgets, because that would also change the headers.
widget_class "*<GtkCList>" style "mist-fg-is-text-color-workaround"

style "gtktreeviewselectedbgworkaround"{
bg[SELECTED]=@hilight
bg[ACTIVE]=@hilight
base[ACTIVE]=@hilight
base[SELECTED]=@hilight
}widget"*Tree*"style"gtktreeviewselectedbgworkaround"
