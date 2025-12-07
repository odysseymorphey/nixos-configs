{ pkgs, ... }: {
  programs.zsh.enable = true;
  programs.firefox.enable = true;
  environment.shells = [ pkgs.zsh ];
  users.users.nixos = {
    isNormalUser = true;
    description = "Odyssey Morphey";
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "input"
      "vboxusers"
      "docker"
      "tun"
    ];
    initialPassword = "1111";
  };
}
