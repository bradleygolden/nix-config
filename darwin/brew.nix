{ config, pkgs, ... }:

{
  services.nix-daemon.enable = true;

  homebrew = {
    enable = true;

    onActivation =
      {
        autoUpdate = true;
        cleanup = "zap";
        upgrade = true;
      };

    brews = [
      "php"
      "git-crypt"
    ];
    extraConfig = ''
      cask_args appdir: "~/Applications"
    '';
    taps = [
      "homebrew/cask"
    ];
    casks = [
      "1password"
      "alfred"
      "dash"
      "google-chrome"
      "postico"
      "postman"
      "slack"
      "typora"
      "visual-studio-code"
      "warp"
    ];
  };
}
