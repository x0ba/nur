{
  buildGoModule,
  callPackage,
  lib,
}: let
  nvfetcher = (callPackage ../../_sources/go/generated.nix {}).helm-ls;
in
  buildGoModule {
    inherit (nvfetcher) pname version src;

    vendorHash = "sha256-KyeXVS07+WUV+Q5Z9Q+SFp/q9KLLQBpuBH9kRSAh8qg=";

    meta = with lib; {
      description = "helm language server";
      homepage = "https://github.com/mrjosh/helm-ls";
      license = licenses.mit;
      platforms = platforms.unix;
    };
  }
