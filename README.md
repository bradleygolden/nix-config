# nix-config

## Installation

```sh
# https://nixos.org/download.html
$ sh <(curl -L https://nixos.org/nix/install)

# https://github.com/nix-community/home-manager#installation
$ nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
$ nix-channel --update

# https://github.com/LnL7/nix-darwin
$ nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
$ ./result/bin/darwin-installer
Would you like to edit the default configuration.nix before starting? [y/n] n
Would you like to manage <darwin> with nix-channel? [y/n] y
Would you like to load darwin configuration in /etc/bashrc? [y/n] y
Would you like to load darwin configuration in /etc/zshrc? [y/n] y

export NIX_PATH=darwin-config=$HOME/.nixpkgs/darwin-configuration.nix:$HOME/.nix-defexpr/channels:$NIX_PATH

# update user specific values if applicable
$ cp -r ./darwin-configuration.nix ./*.nix ./darwin ./home_manager ~/.nixpkgs/
$ darwin-rebuild
```
