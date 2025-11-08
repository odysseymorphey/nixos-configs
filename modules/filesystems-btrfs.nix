{ lib, ... }: {
  fileSystems."/" = {
    device = lib.mkForce "/dev/disk/by-label/nixos";
    fsType = "btrfs";
    options = [
      "subvol=root"
      "compress=zstd"
      "noatime"
    ];
  };

  fileSystems."/home" = {
    device = lib.mkForce "/dev/disk/by-label/nixos";
    fsType = "btrfs";
    options = [
      "subvol=home"
      "compress=zstd"
    ];
  };

  fileSystems."/nix" = {
    device = lib.mkForce "/dev/disk/by-label/nixos";
    fsType = "btrfs";
    options = [
      "subvol=nix"
      "compress=zstd"
    ];
  };

  fileSystems."/boot" = {
    device = lib.mkForce "/dev/disk/by-label/boot";
    fsType = "vfat";
  };
}