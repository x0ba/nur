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
    version = "0.6.9";
    src = fetchurl {
      url = "https://pypi.org/packages/source/d/discover-overlay/discover-overlay-0.6.9.tar.gz";
      sha256 = "sha256-14UmxAF4X0GnPokZeXAqeZYdSDUPrE3ZpNDUdk64Bik=";
    };
  };
  gpt4all = {
    pname = "gpt4all";
    version = "a010a8a7ca3020e14a5e6c08a3426e0d987eef75";
    src = fetchFromGitHub {
      owner = "nomic-ai";
      repo = "gpt4all";
      rev = "a010a8a7ca3020e14a5e6c08a3426e0d987eef75";
      fetchSubmodules = true;
      sha256 = "sha256-NSRuocDkkwn1ztfpmvMQG0JX1x2qf5DL0wg3tMbOOw8=";
    };
    date = "2024-02-21";
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
    version = "3.3.0";
    src = fetchurl {
      url = "https://github.com/UltimateHackingKeyboard/agent/releases/download/v3.3.0/UHK.Agent-3.3.0-linux-x86_64.AppImage";
      sha256 = "sha256-jkIuXKTm8imq1U7kbQhK7LkEeI2qz0Gu7rWuDn6Ex+c=";
    };
  };
  wezterm = {
    pname = "wezterm";
    version = "95581d8697f3749f84ccb1402ac94ea6582b227f";
    src = fetchFromGitHub {
      owner = "wez";
      repo = "wezterm";
      rev = "95581d8697f3749f84ccb1402ac94ea6582b227f";
      fetchSubmodules = true;
      sha256 = "sha256-Ygs7y02eMgp/uVpc6YjmNgjC8dS1Phrv62WR5Qp/9g4=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./wezterm-95581d8697f3749f84ccb1402ac94ea6582b227f/Cargo.lock;
      outputHashes = {
        "xcb-imdkit-0.3.0" = "sha256-fTpJ6uNhjmCWv7dZqVgYuS2Uic36XNYTbqlaly5QBjI=";
      };
    };
    date = "2024-02-21";
  };
}
