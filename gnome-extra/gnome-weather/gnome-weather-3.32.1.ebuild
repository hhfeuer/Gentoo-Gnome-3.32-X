# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit gnome2 python-any-r1 meson virtualx

DESCRIPTION="A weather application for GNOME"
HOMEPAGE="https://wiki.gnome.org/Design/Apps/Weather"

LICENSE="GPL-2+ LGPL-2+ MIT CC-BY-3.0 CC-BY-SA-3.0"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	>=app-misc/geoclue-2.3.1:2.0
	>=dev-libs/gjs-1.50
	>=dev-libs/glib-2.32:2
	>=dev-libs/gobject-introspection-1.35.9:=
	>=dev-libs/libgweather-3.25.91:=
	gnome-base/gsettings-desktop-schemas
	>=x11-libs/gtk+-3.11.4:3
"
# libxml2 required for glib-compile-resources
DEPEND="${RDEPEND}
	dev-libs/appstream-glib
	dev-libs/libxml2:2
	>=dev-util/intltool-0.26
	virtual/pkgconfig
"
