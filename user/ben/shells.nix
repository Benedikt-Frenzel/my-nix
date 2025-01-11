{ config, pkgs, ... }:

let
    myAliases = {
        ll = "ls -l";
        vim = "nvim";
        ga = "git add";
        gc = "git commit";
        nbs = "sudo nixos-rebuild switch --flake .";
    }
in
{
    programs.bash = {
        enable = true;
        shellAliases = myAliases;
    }
}