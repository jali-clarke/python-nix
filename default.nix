{pkgs ? import <nixpkgs> {}}:
let
  sysPkgs = with pkgs; [
    python38
    bash
    coreutils
    which
  ];

  pythonPkgs = with pkgs.python38Packages; [
    pip
    setuptools
    wheel
  ];
in
pkgs.dockerTools.buildLayeredImage {
  name = "python";
  tag = "3.8-nix";
  created = "now";

  contents = sysPkgs ++ pythonPkgs;

  config = {
    Cmd = [ "python" ];
  };
}
