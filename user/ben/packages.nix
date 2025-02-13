{ config, lib, pkgs, ... }:

{
users.users.ben = {
    packages = with pkgs; [
        _1password-cli
        _1password-gui
        neovim
        home-manager
        btop
        ghostty
        blueman
        vscode
        thunderbird
        fastfetch
        taskwarrior3
        vmware-workstation
        mosh
        mindustry
        nh
    ];
  };

}