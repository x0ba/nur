{ buildGoModule, fetchFromGitHub, lib, stdenv, ... }:
buildGoModule rec {
  name = "sesh";
  pname = "sesh";

  src = fetchFromGitHub {
    owner = "joshmedeski";
    repo = "sesh";
    rev = "e003271f1ab857f4dfc7d512c74465a62a93fb69";
    sha256 = "sha256-7YNQyn6XsHiiEs0xHU54CYek0nN2eBqFvJ4zrHMYM7I=";
  };

  vendorHash = "sha256-zt1/gE4bVj+3yr9n0kT2FMYMEmiooy3k1lQ77rN6sTk=";
}





















