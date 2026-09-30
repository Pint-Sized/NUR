{ stdenv, lib }:

stdenv.mkDerivation {
  pname = "chevron";
  version = "2.2.0";

  src = ./src;

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/chevron
    cp -r * $out/share/chevron/
  '';

  meta = with lib; {
    description = "Chevron browser startpage";
    homepage = "https://github.com/kholmogorov27/chevron";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
