{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs; [ qmk git python3 avrdude dfu-util udev ];

  shellHook = # bash
    ''
      export QMK_HOME=$HOME/Documents/qmk_firmware
      qmk config user.overlay_dir="$(realpath /home/boticelli/Documents/qmk_userspace)"
    '';
}
