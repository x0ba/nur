{
  buildGoModule,
  callPackage,
  lib,
}: let
  nvfetcher = (callPackage ../../_sources/go/generated.nix {}).helm-ls;
in
  buildGoModule {
    inherit (nvfetcher) pname version src;

    vendorHash = "sha256-8mSX7fwgxwZ8aIXfv3WxLiVH5PjSFzcxM0oekod84tA=";

    meta = with lib; {
      description = "helm language server";
      homepage = "https://github.com/mrjosh/helm-ls";
      license = licenses.mit;
      platforms = platforms.unix;
    };
  }
