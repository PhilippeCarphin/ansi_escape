PREFIX ?= localinstall

ifeq ($(shell uname),Darwin)
	INSTALL = ginstall
else
	INSTALL = install
endif

install:
	$(INSTALL) ansi_escape.sh -D $(DESTDIR)$(PREFIX)/bin/ansi_escape.sh
