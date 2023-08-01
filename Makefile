.PHONY: lightning

# https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html#description
RABBIT_TERMINAL_FONT_DESCRIPTION = M PLUS 1  Code 18
export RABBIT_TERMINAL_FONT_DESCRIPTION

lightning:
	rabbit lightning.md --size 800,450

present:
	rabbit slides.md --size 800,450
