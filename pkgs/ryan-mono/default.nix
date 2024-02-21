{
  stdenvNoCC,
  fetchzip,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "ryan-mono";
  version = "2024.02.16";

  src = fetchzip {
    url = "https://github.com/ryanccn/ryan-mono/releases/download/v${finalAttrs.version}/RyanMono.zip";
    stripRoot = false;
    hash = "sha256-7bjAe0U5W1Dymvk9Vulrxei3+Dk7RjE+zMkorg4EyDM=";
  };
  dontConfigure = true;
  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    cp -R $src/RyanMono/*.ttf $out/share/fonts/truetype

    runHook postInstall
  '';
})
