{ ... }: {
  networking.hostName = "nixbook";
  networking.networkmanager.enable = true;
  networking.wireless.enable = false;
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      5432 # Postgres
      9000 # Portainer
    ];
  };
}