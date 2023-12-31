{
  description = "x0ba NUR repository";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... } @ inputs:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      legacyPackages = forAllSystems (system:
        import ./default.nix {
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ inputs.rust-overlay.overlays.default ];
          };
        });
      packages = forAllSystems (
        system:
        nixpkgs.lib.filterAttrs
          (_: v: nixpkgs.lib.isDerivation v)
          inputs.self.legacyPackages.${system}
      );

      darwinModules.default = import ./modules/darwin;
      homeManagerModules.default = import ./modules/hm;
      overlays.default = import ./overlays;
    };

  nixConfig = {
    extra-substituters = [ "https://x0ba.cachix.org" ];
    extra-trusted-public-keys = [ "x0ba.cachix.org-1:+WLqIY3Ygu/++D57/ZeUSO9jbDwnhQ6vzCXtaghpn9E=" ];
  };
}
