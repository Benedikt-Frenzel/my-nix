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
			./configuration.nix
      ./user/ben/shells.nix
      ./user/ben/packages.nix
		];
	};
  };
}
