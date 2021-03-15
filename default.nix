with (import <nixpkgs> {}); stdenv.mkDerivation {
  name = "cv-mkg";

  src = ./.;

  nativeBuildInputs = [
    biber
    tectonic
    texlive.combined.scheme-full
  ];
}
