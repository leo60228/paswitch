{ stdenv, pulseaudio }:
stdenv.mkDerivation {
  pname = "paswitch";
  version = "1.0.0";

  src = ./.;

  buildInputs = [ pulseaudio ];

  installPhase = ''
  mkdir -p $out/bin
  cp ./paswitch $out/bin
  '';
}
