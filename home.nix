{ config, lib, pkgs, ... }:

{
  # Read the changelog before changing this value
  home.stateVersion = "24.05";

  # insert home-manager config
programs = {
    git = {
      enable = true;
      userName = "João Thallis";
      userEmail = "joaothallis@icloud.com";
      extraConfig = {
        commit = {
          verbose = true;
        };
      };
    };
    };
}
