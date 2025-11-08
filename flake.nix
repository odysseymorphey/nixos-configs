{
  description = "Nix configs + dev shell with nil & alejandra";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = {
    self,
    nixpkgs,
  }: let
    forAll = f:
      nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"] (system:
        f (import nixpkgs {inherit system;}));
  in {
    devShells = forAll (pkgs: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          nil
          alejandra
          nixfmt-rfc-style
        ];
      };
    });
  };
}
