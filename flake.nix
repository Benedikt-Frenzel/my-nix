{
  description = "Benedikt sein Flöckchen";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, ... } @ inputs: 
  let
	pkgs = nixpkgs.legacyPackages.x86_64-linux;

  in
  {
	nixosConfigurations.dwarf = nixpkgs.lib.nixosSystem {
  	specialArgs = { inherit inputs; };
		modules = [
			./systems/dwarf/configuration.nix
      ./user/ben/auto-login.nix
      ./user/ben/firefox.nix
      ./user/ben/1password.nix
      ./user/ben/shells.nix
      ./user/ben/packages.nix
		];
	};
  };
}
