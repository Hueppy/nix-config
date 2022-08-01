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
        ];
      };
    };

    programs = {
      zsh.enable = true;
    };
  };
}