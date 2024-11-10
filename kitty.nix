{ config, lib, pkgs, ... }:

{
  #
  # Terminal emulator
  #
  programs.kitty =  {
    enable = true;
    font = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans Mono for Powerline";
    };
    settings = {
      foreground = "#FFFFFF";
      background = "#000000";
      background_opacity = "0.95";

      # Black + DarkGrey;
      color0 = "#2E3436";
      color8 = "#555753";

      # DarkRed + Red;
      color1 = "#a40000";
      color9 = "#EF2929";

      # DarkGreen + Green;
      color2 = "#439A06";
      color10 = "#8AE234";

      # DarkYellow + Yellow;
      color3 = "#C4A000";
      color11 = "#FCE94F";

      # DarkBlue + Blue;
      color4 = "#3465A4";
      color12 = "#729FCF";

      # DarkMagenta + Magenta;
      color5 = "#75507B";
      color13 = "#AD7FA8";

      # DarkCyan + Cyan;
      color6 = "#ce5c00";
      color14 = "#fcaf3e";

      # LightGrey + White;
      color7 = "#babdb9";
      color15 = "#EEEEEC";
    };
  };
}
