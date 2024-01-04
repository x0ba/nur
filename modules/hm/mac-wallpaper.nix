{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.home.mac-wallpaper;
in {
  options.home.mac-wallpaper = mkOption {
    type = types.nullOr types.path;
    default = null;
    example = "/Users/daniel/Pictures/Wallpapers/wallpaper.png";
    description = "Path to the wallpaper to set.";
  };

  config =
    mkIf (cfg != null && pkgs.stdenv.isDarwin)
    {
      home.activation.set-wallpaper = let
        m = "${pkgs.m-cli}/bin/m";
      in
        lib.hm.dag.entryAfter ["writeBoundary"] ''
          ${m} "wallpaper" "${cfg}"
        '';
    };
}
