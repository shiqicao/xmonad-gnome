#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_XMONAD_GNOME = $(PREFIX)/bin/xmonad-gnome
PATH_XMONAD_GNOME_DESKTOP = $(PREFIX)/share/applications/xmonad-gnome.desktop
PATH_XMONAD_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/xmonad-gnome.session
PATH_XMONAD_GNOME_XSESSION = $(PREFIX)/share/xsessions/xmonad-gnome.desktop
PATH_GNOME_SESSION_XMONAD = $(PREFIX)/bin/gnome-session-xmonad

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/xmonad-gnome-xsession.desktop $(PATH_XMONAD_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/xmonad-gnome.desktop $(PATH_XMONAD_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/xmonad-gnome.session $(PATH_XMONAD_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/xmonad-gnome $(PATH_XMONAD_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-xmonad $(PATH_GNOME_SESSION_XMONAD)



uninstall:
	rm -f $(PATH_XMONAD_GNOME)
	rm -f $(PATH_XMONAD_GNOME_DESKTOP)
	rm -f $(PATH_XMONAD_GNOME_SESSION)
	rm -f $(PATH_XMONAD_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_XMONAD)



.PHONY: all install uninstall
