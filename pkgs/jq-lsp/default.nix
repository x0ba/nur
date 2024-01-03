{
  buildGoModule,
  callPackage,
  lib,
}: let
  nvfetcher = (callPackage ../../_sources/go/generated.nix {}).jq-lsp;
in
  buildGoModule {
    inherit (nvfetcher) pname version src;

    vendorHash = "sha256-8sZGnoP7l09ZzLJqq8TUCquTOPF0qiwZcFhojUnnEIY=";

    meta = with lib; {
      description = "jq language server";
      homepage = "https://github.com/wader/jq-lsp";
      license = licenses.mit;
      platform = platforms.unix;
    };
  }
