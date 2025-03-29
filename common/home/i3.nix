{ config, lib, pkgs, ... }:

{
  imports = [ ./polybar.nix ];

  home.packages = with pkgs; [
    redshift
    rofi
    i3-layout-manager
  ];

  #
  # Compositor
  #
  services.picom = {
    enable = true;
  };

  #
  # Change Wallpaper
  #
  services.random-background = {
    enable = true;
    enableXinerama = true;             # different on each screen
    display = "scale";
    imageDirectory = "%h/.wallpapers";
    interval = null;                   # change each boot
  };


  #
  # Window Manager
  #
  xsession.windowManager.i3 = {
    enable = true;
    config = let
        mod   = "Mod4";
        left  = "c";
        down  = "t";
        up    = "s";
        right = "r";
        terminal = "kitty";
    in {
      modifier = mod;

      fonts = {
        names = [ "DejaVu" "FontAwesome" ];
        size = 10.0;
      };

      gaps = {
        inner = 4;
        smartBorders = "on";
      };

      bars = [ ];

      startup = [
        # Make sure that polybar can load all i3's infos
        { command = "systemctl --user restart polybar.service"; always = true; }
      ];

      terminal = "kitty";

      menu = "\${pkgs.rofi}/bin/rofi";

      window = {
        border = 0;
        commands = [
          {
            command = "border pixel 1";
            criteria.class = "kitty";
          }
        ];
      };

      keybindings = lib.mkOptionDefault {
        ### Key bindings
        #
        # Basics:
        #
        # Kill focused window
        "${mod}+Shift+q" = "kill";

        # Start your launcher
        "${mod}+d" = "exec rofi -show drun";

        # lock
        "${mod}+l" = "exec i3lock -eftin -c 000000";

        #
        # Moving around:
        #
        # Move your focus around
        "${mod}+${left}" = "focus left";
        "${mod}+${down}" = "focus down";
        "${mod}+${up}" = "focus up";
        "${mod}+${right}" = "focus right";

        # Move the focused window with the same, but add Shift
        "${mod}+Shift+${left}" = "move left";
        "${mod}+Shift+${down}" = "move down";
        "${mod}+Shift+${up}" = "move up";
        "${mod}+Shift+${right}" = "move right";

        "${mod}+tab" = "focus next";
        "${mod}+Shift+tab" = "focus prev";

        #
        # Layout stuff:
        #
        # You can "split" the current object of your focus with
        # ${mod}+b or ${mod}+v, for horizontal and vertical splits
        # respectively.
        "${mod}+h" = "split h";
        "${mod}+v" = "split v";

        # Switch the current container between different layout styles
        "${mod}+u" = "layout stacking";
        "${mod}+w" = "layout tabbed";
        "${mod}+e" = "layout toggle split";

        # Make the current focus fullscreen
        "${mod}+f" = "fullscreen";

        # Toggle the current focus between tiling and floating mode
        "${mod}+Shift+space" = "floating toggle";

        # Swap focus between the tiling area and the floating area
        "${mod}+space" = "layout_manager";

        # Move focus to the parent container
        "${mod}+a" = "focus parent";

        #
        # fn bindings
        #
        # Use pactl to adjust volume in PulseAudio. set $refresh_i3status killall -SIGUSR1 i3status
        "XF86AudioRaiseVolume" = "exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status";
        "XF86AudioLowerVolume" = "exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status";
        "XF86AudioMute" = "exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status";
        "XF86AudioMicMute" = "exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status";
        "XF86MonBrightnessDown" = "exec light -U 5";
        "XF86MonBrightnessUp"   = "exec light -A 5";
        "XF86Display"           = "exec nope";
        "XF86WLAN"              = "exec nope";
        "XF86Tools"             = "exec nope";
        "XF86Bluetooth"         = "exec nope";
        "XF86Keyboard"          = "exec nope";
        "XF86Favorites"         = "exec nope";
        "Print"                 = "exec scrot -s";
      };
    };
  };
}
