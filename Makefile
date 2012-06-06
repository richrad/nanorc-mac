THEME = light

install: themes/$(THEME)
	cat *.nanorc | $< > ~/.nanorc


.PHONY: install
