{ stdenvNoCC
, fetchzip
,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "pixel-code";
  version = "1.1.1";

  src = fetchzip {
    url = "https://github.com/qwerasd205/PixelCode/releases/download/v${finalAttrs.version}/Pixel_Code_v${finalAttrs.version}.zip";
    stripRoot = false;
    hash = "sha256-4FYCESbYQeolM+8ugEALCS24yjeMMec4tJH1OaLTmAQ=";
  };

  outputs = [ "out" ];

  installPhase = ''
    runHook preInstall

    pushd Pixel_Code_v${finalAttrs.version}
    install -Dm644 *.otf -t $out/share/fonts/opentype
    popd

    runHook postInstall
  '';
})
