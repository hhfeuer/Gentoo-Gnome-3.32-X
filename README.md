Unofficial Gentoo Gnome 3.32 on Xorg overlay
--------------------------------------------

Versions
--------

 - Gnome 3.32 (stable)

General information
-------------------

 - All ebuilds are keyworded amd64
 - Only contains dependencies for and tested with USE="-wayland"
 - Updated games not (yet) included
 - Portions taken from the Heather Gnome overlay
 - ebuilds derived from the 3.30 official Gentoo portage ebuilds

Usage
-----

## via local overlays

Create a `/etc/portage/repos.conf/Gnome-3.32-X.conf` file containing

```
[Gnome-3-32-X]
location = /usr/local/portage/Gnome-3-32-X
sync-type = git
sync-uri = https://github.com/hhfeuer/Gentoo-Gnome-3.32-X.git
priority=9999
```

Then run emerge --sync

## via layman

Add via layman:

	layman -o https://raw.github.com/hhfeuer/Gentoo-Gnome-3.32-X/master/repositories.xml -f -a Gnome-3-32-X

Then run layman -s Gnome-3-32-X


Needs
-----
package.keywords/accept_keywords:

	=dev-python/pygobject-3.32.1 ~amd64
	=dev-libs/libgweather-3.32.1 ~amd64
	=app-editors/gedit-3.32.2 ~amd64
	=app-text/evince-3.32.0 ~amd64
	=dev-util/meson-0.50.1 ~amd64

needs package.use:

	dev-libs/folks -tracker
	>=x11-libs/gtksourceview-3.24.7 vala
	>=net-libs/gnome-online-accounts-3.26.2 vala

depending on kernel config might need package.use:

	sys-apps/bubblewrap suid

if portage is complaining about blocks concerning glib and gdbus-codegen, run first:

	emerge -1 glib gdbus-codegen


