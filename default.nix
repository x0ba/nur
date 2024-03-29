{
  pkgs ?
    import <nixpkgs> {
      inherit system;
      overlays = [(import (builtins.fetchTarball "https://github.com/oxalica/rust-overlay/archive/master.tar.gz"))];
    },
  system ? builtins.currentSystem,
}: let
  nvfetcher = pkgs.callPackage ./_sources/generated.nix {};
  docs = pkgs.callPackage ./docs {};
in {
  lib = import ./lib {inherit pkgs;}; # functions
  modules = import ./modules;
  overlays = import ./overlays; # nixpkgs overlays

  apple-cursor = pkgs.callPackage ./pkgs/apple-cursor {};
  apple-emoji = pkgs.callPackage ./pkgs/apple-emoji {};
  apple-fonts = pkgs.callPackage ./pkgs/apple-fonts {};
  cura = pkgs.callPackage ./pkgs/cura {};
  discover-overlay = pkgs.callPackage ./pkgs/discover-overlay {};
  fragment-mono = pkgs.callPackage ./pkgs/fragment-mono {};
  geist-mono = pkgs.callPackage ./pkgs/geist-mono {};
  geist-sans = pkgs.callPackage ./pkgs/geist-sans {};
  gonvim-tools = pkgs.callPackage ./pkgs/gonvim-tools {};
  helm-ls = pkgs.callPackage ./pkgs/helm-ls {};
  icat = import (nvfetcher.icat.src) {inherit pkgs;};
  jq-lsp = pkgs.callPackage ./pkgs/jq-lsp {};
  liga-sfmono = pkgs.callPackage ./pkgs/liga-sfmono {};
  mopidy-podcast-itunes = pkgs.callPackage ./pkgs/mopidy-podcast-itunes {};
  pixel-code = pkgs.callPackage ./pkgs/pixel-code {};
  plymouth-theme-catppuccin = pkgs.callPackage ./pkgs/plymouth-theme-catppuccin {};
  posy-improved-cursor = pkgs.callPackage ./pkgs/posy-improved-cursor {};
  sizzy = pkgs.callPackage ./pkgs/sizzy {};
  uhk-agent = pkgs.callPackage ./pkgs/uhk-agent {};
  ryan-mono = pkgs.callPackage ./pkgs/ryan-mono {};
  sesh = pkgs.callPackage ./pkgs/sesh {};
  ryan-term = pkgs.callPackage ./pkgs/ryan-term {};
  wezterm-nightly = let
    callPackage =
      if pkgs.stdenv.isDarwin
      then pkgs.darwin.apple_sdk_11_0.callPackage
      else pkgs.callPackage;
  in
    callPackage ./pkgs/wezterm-nightly {};

  docs-md = docs.md;
  docs-html = docs.html;
}
