{ pkgs, ... }: {
  programs.zsh.enable = true;
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
    ];
    initialPassword = "1111";
  };
}
