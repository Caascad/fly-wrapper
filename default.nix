{ sources ? import ./nix/sources.nix
, nixpkgs ? sources.nixpkgs
, pkgs ? import nixpkgs {}
}:

with pkgs;

stdenv.mkDerivation {
  pname = "fly-wrapper";
  version = "0.0.2";

  nativeBuildInputs = [ makeWrapper ];

  unpackPhase = ":";
  installPhase = ''
    mkdir -p $out/bin
    cp ${./fly-wrapper} $out/bin/fly-wrapper
    chmod +x $out/bin/fly-wrapper
    wrapProgram $out/bin/fly-wrapper --prefix PATH : ${lib.makeBinPath [ yq ]}
  '';
}
