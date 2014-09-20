{ stdenv, fetchurl, glib, gtk, intltool, libfm, libX11, pango, pkgconfig }:

stdenv.mkDerivation {
  name = "pcmanfm-1.2.2";
  src = fetchurl {
    url = "mirror://sourceforge/pcmanfm/pcmanfm-1.2.2.tar.xz";
    sha256 = "00wmbqrbcrxk1mcdkgdl8ddf3gp28rm5mamqdq72sfr0q2d0287n";
  };

  buildInputs = [ glib gtk intltool libfm libX11 pango pkgconfig ];

  meta = with stdenv.lib; {
    homepage = "http://blog.lxde.org/?cat=28/";
    license = licenses.gpl2Plus;
    description = "File manager with GTK+ interface";
    maintainers = [ maintainers.ttuegel ];
    platforms = platforms.linux;
  };
}
