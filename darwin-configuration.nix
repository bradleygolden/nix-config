{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nix-darwin>
    ./darwin/brew.nix
  ];

  environment.systemPackages =
    [
      pkgs.nixpkgs-fmt
      pkgs.vim
    ];

  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  programs.zsh.enable = true;

  system.stateVersion = 4;

  users.users.bradleygolden = {
    name = "bradleygolden";
    home = "/Users/bradleygolden";
  };

  home-manager.users.bradleygolden = import ./home-manager.nix;
}
