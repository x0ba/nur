{
  stdenvNoCC,
  fetchzip,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "geist-sans";
  version = "1.1.0";

  src = fetchzip {
    url = "https://github.com/vercel/geist-font/releases/download/${finalAttrs.version}/Geist.zip";
    stripRoot = false;
    hash = "sha256-nSN+Ql5hTd230w/u6VZyAZaPtFSaHGmMc6T1fgGTCME=";
  };

  outputs = ["out"];

  installPhase = ''
    runHook preInstall

    pushd Geist
    install -Dm644 *.otf -t $out/share/fonts/opentype
    popd

    runHook postInstall
  '';
})
