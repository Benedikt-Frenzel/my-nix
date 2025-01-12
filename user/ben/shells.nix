{ config, pkgs, ... }:

let
    myAliases = {
        ll = "ls -l";
        vim = "nvim";
        ga = "git add";
        gc = "git commit";
        nbs = "sudo nixos-rebuild switch --flake /home/ben/code/my-nix/";
    };
in
{
    programs.bash = {
        shellAliases = myAliases;
    };
}