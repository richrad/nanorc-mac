THEME = light

nanorc: themes/$(THEME) *.nanorc
	cat *.nanorc | $< > $@

install: nanorc
	install -pm0644 nanorc ~/.nanorc

clean:
	rm -f nanorc


.PHONY: install clean
