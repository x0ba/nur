{
  stdenvNoCC,
  fetchzip,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "ryan-term";
  version = "2024.02.16";

  src = fetchzip {
    url = "https://github.com/ryanccn/ryan-mono/releases/download/v${finalAttrs.version}/RyanTerm.zip";
    stripRoot = false;
    hash = "sha256-VfAMFso2307d7Y087atIuIGtDnEn1RnbCzQHds3J4RI=";
  };
  dontConfigure = true;
  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    cp -R $src/RyanTerm/*.ttf $out/share/fonts/truetype

    runHook postInstall
  '';
})
