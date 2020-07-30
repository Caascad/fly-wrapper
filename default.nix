{ sources ? import ./nix/sources.nix
, nixpkgs ? sources.nixpkgs
, pkgs ? import nixpkgs {}
}:

with pkgs;

stdenv.mkDerivation {
  pname = "fly-wrapper";
  version = "0.0.1";

  unpackPhase = ":";
  installPhase = ''
    mkdir -p $out/bin
    cp ${./fly-wrapper} $out/bin/fly-wrapper
    chmod +x $out/bin/fly-wrapper
  '';
}
