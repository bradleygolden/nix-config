{ config, pkgs, lib, ... }:

{
  home.username = "bradleygolden";

  home.sessionVariables = {
    EDITOR = "code -w";
  };

  home.stateVersion = "22.11";

  programs = {
    direnv = {
      enable = true;
      nix-direnv = {
        enable = true;
      };
    };
    git = {
      enable = true;
      userEmail = "bradley@albert.io";
      userName = "Bradley Golden";
      extraConfig = {
        pull.rebase = true;
      };
    };
    home-manager = {
      enable = true;
    };
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      initExtraBeforeCompInit = ''
        ZSH_DISABLE_COMPFIX=true
      '';
      oh-my-zsh = {
        enable = true;
        theme = "robbyrussell";
        plugins = [
          "git"
        ];
      };
    };
  };
}
