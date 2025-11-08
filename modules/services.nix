{ ... }: {
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  services.fwupd.enable = true;

  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
}
