.PHONY: 1 2 3 4

# https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html#description
RABBIT_TERMINAL_FONT_DESCRIPTION = M PLUS 1  Code 18
export RABBIT_TERMINAL_FONT_DESCRIPTION

1:
	rabbit flux-basics.md --size 800,450 -f --initial-slide=1

2:
	rabbit flux-bootstrap.md --size 800,450 -f --initial-slide=1

3:
	rabbit flux-imageauto.md --size 800,450 -f --initial-slide=1

4:
	rabbit flux-semver.md --size 800,450 -f --initial-slide=1
