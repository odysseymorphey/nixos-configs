{ pkgs, ... }: {
  nix.package = pkgs.nixVersions.stable;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}