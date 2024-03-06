# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  apple-emoji = {
    pname = "apple-emoji";
    version = "v16.4-patch.1";
    src = fetchurl {
      url = "https://github.com/samuelngs/apple-emoji-linux/releases/download/v16.4-patch.1/AppleColorEmoji.ttf";
      sha256 = "sha256-1e1Xz7wF1NhCe0zUdJWXE6hPGmkylAeggsN01T3WWpU=";
    };
  };
  catppuccin-gtk = {
    pname = "catppuccin-gtk";
    version = "v0.7.1";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "gtk";
      rev = "v0.7.1";
      fetchSubmodules = false;
      sha256 = "sha256-V3JasiHaATbVDQJeJPeFq5sjbkQnSMbDRWsaRzGccXU=";
    };
  };
  cura = {
    pname = "cura";
    version = "5.6.0";
    src = fetchurl {
      url = "https://github.com/Ultimaker/Cura/releases/download/5.6.0/Ultimaker-Cura-5.6.0-linux-X64.AppImage";
      sha256 = "sha256-EHiWoNpLKHPzv6rZrtNgEr7y//iVcRYeV/TaCn8QpEA=";
    };
  };
  discover-overlay = {
    pname = "discover-overlay";
    version = "0.7.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/d/discover-overlay/discover-overlay-0.7.0.tar.gz";
      sha256 = "sha256-t9adDNx4/lU8573hTr6ihjTHW/bdBDvFjH38KRLV9eM=";
    };
  };
  gpt4all = {
    pname = "gpt4all";
    version = "be6d3bf9dc1e5e358b1d73f1d447637cb5cee381";
    src = fetchFromGitHub {
      owner = "nomic-ai";
      repo = "gpt4all";
      rev = "be6d3bf9dc1e5e358b1d73f1d447637cb5cee381";
      fetchSubmodules = true;
      sha256 = "sha256-pL4vWo8r4RfDY0codkuJjc4W1hnom+Avpm/sxEIb1BQ=";
    };
    date = "2024-03-05";
  };
  icat = {
    pname = "icat";
    version = "4c3497a35d4f5a665c25b6ad468025f4126eaa40";
    src = fetchFromGitHub {
      owner = "nekowinston";
      repo = "icat";
      rev = "4c3497a35d4f5a665c25b6ad468025f4126eaa40";
      fetchSubmodules = false;
      sha256 = "sha256-ouOU4MuqpngtSwcmlVRnuoECiRPpVIMY4QpC0EWjNEg=";
    };
    date = "2023-07-15";
  };
  mopidy-podcast-itunes = {
    pname = "mopidy-podcast-itunes";
    version = "3.0.1";
    src = fetchurl {
      url = "https://pypi.org/packages/source/M/Mopidy-Podcast-iTunes/Mopidy-Podcast-iTunes-3.0.1.tar.gz";
      sha256 = "sha256-sxowRHUGiUr7dKoNKs4htFJccEaBqvyvzINmrZIZIds=";
    };
  };
  sf-compact = {
    pname = "sf-compact";
    version = "unknown";
    src = fetchurl {
      url = "https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg";
      sha256 = "sha256-Mkf+GK4iuUhZdUdzMW0VUOmXcXcISejhMeZVm0uaRwY=";
    };
  };
  sf-mono = {
    pname = "sf-mono";
    version = "unknown";
    src = fetchurl {
      url = "https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg";
      sha256 = "sha256-tZHV6g427zqYzrNf3wCwiCh5Vjo8PAai9uEvayYPsjM=";
    };
  };
  sf-pro = {
    pname = "sf-pro";
    version = "unknown";
    src = fetchurl {
      url = "https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg";
      sha256 = "sha256-Mu0pmx3OWiKBmMEYLNg+u2MxFERK07BQGe3WAhEec5Q=";
    };
  };
  sizzy-darwin-arm = {
    pname = "sizzy-darwin-arm";
    version = "72.2.0";
    src = fetchurl {
      url = "https://proxy.sizzy.co/updates/download/mac?arch=arm64";
      sha256 = "sha256-+wT1xrOo4FB/uixSjKHwKyNtCBZomolkpZvFYG1c8lU=";
    };
  };
  sizzy-darwin-x64 = {
    pname = "sizzy-darwin-x64";
    version = "72.2.0";
    src = fetchurl {
      url = "https://proxy.sizzy.co/updates/download/mac?arch=x64";
      sha256 = "sha256-owoWvYSgaBNnfVD7EiDJlNgZG386QQgydqReqSxpCyY=";
    };
  };
  sizzy-linux = {
    pname = "sizzy-linux";
    version = "72.2.0";
    src = fetchurl {
      url = "https://proxy.sizzy.co/updates/download/linux?arch=x64";
      sha256 = "sha256-L9OkwzctH8IaM0nX4xa9MrWm4xp3Ocnuvr0BR/t+bNs=";
    };
  };
  uhk-agent = {
    pname = "uhk-agent";
    version = "4.0.2";
    src = fetchurl {
      url = "https://github.com/UltimateHackingKeyboard/agent/releases/download/v4.0.2/UHK.Agent-4.0.2-linux-x86_64.AppImage";
      sha256 = "sha256-yx5hOmb1la+vNh8x0PM3edcMn4ojdwzNmGBUg/BH7wE=";
    };
  };
  wezterm = {
    pname = "wezterm";
    version = "22424c3280cb21af43317cb58ef7bc34a8cbcc91";
    src = fetchFromGitHub {
      owner = "wez";
      repo = "wezterm";
      rev = "22424c3280cb21af43317cb58ef7bc34a8cbcc91";
      fetchSubmodules = true;
      sha256 = "sha256-EQb0gNAb98e4IFwBv5XODtq9Er519wM/h5EglD8Lrhc=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./wezterm-22424c3280cb21af43317cb58ef7bc34a8cbcc91/Cargo.lock;
      outputHashes = {
        "xcb-imdkit-0.3.0" = "sha256-fTpJ6uNhjmCWv7dZqVgYuS2Uic36XNYTbqlaly5QBjI=";
      };
    };
    date = "2024-02-26";
  };
}
