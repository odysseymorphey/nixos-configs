{ ... }: {
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  services.fwupd.enable = true;

  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = true;
    };
  };

  services.netbird.enable = true;

  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;

  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    autoPrune = {
      enable = true;
      dates = "weekly";
    };
    storageDriver = "btrfs";

    daemon.settings = {
      features = {
        buildkit = true;
      };
    };
  };
}
