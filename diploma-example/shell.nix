{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    nodePackages.npm
  ];

  shellHook = ''
    npm install
  '';
}
