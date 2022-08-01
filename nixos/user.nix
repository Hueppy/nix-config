{ config, pkgs, ... }:
{
  imports = [ <home-manager/nixos> ];

  users.users.phue = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  home-manager.users = {
    phue = {
      home = {
        packages = with pkgs; [
          jetbrains.clion
        ];
      };
    };

    programs = {
      zsh.enable = true;
    };

    services = {
      polybar = {
        config = {
	  "bar/main" = {
            modules-left = [
	      "bspwm"
	    ];
	  };
        };
        enable = true;
      }

      sxhkd = {
        enable = true;
	keybindings = {
          "alt + Return" = "alacritty"
        }
      };

      xserver.windowManager.bspwm = {
        enable = true;
	monitors = {
          LVDS-1 = [
	    "一"
            "二"
	    "三"
	    "四"
	    "五"
	    "六"
	    "七"
	    "八"
	    "九"
	    "十"
	  ];
        };
      };
    }
  };
}