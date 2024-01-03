{ lib
, stdenvNoCC
, fetchzip
}:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "fragment-mono";
  version = "1.011";

  src = fetchzip {
    url = "https://github.com/weiweihuanghuang/fragment-mono/releases/download/${finalAttrs.version}/fragment-mono-fonts.zip";
    stripRoot = false;
    hash = "sha256-QxxTRo2BG3LrWKI0rZCLkDufAsxwVI4VZt89OF1fnrg=";
  };

  outputs = [ "out" ];

  installPhase = ''
    runHook preInstall

    pushd fragment-mono-fonts/fonts/
    install -Dm644 otf/*.otf -t $out/share/fonts/opentype
    install -Dm644 ttf/*.ttf -t $out/share/fonts/truetype
    popd

    runHook postInstall
  '';

  meta = {
    description = "Helvetica Monospace Coding Font";
    homepage = "https://github.com/weiweihuanghuang/fragment-mono";
  };
})
