{...}:
{
  home.username = "nick";
  home.homeDirectory = "/home/nick";

  home.stateVersion = "23.11";
 
  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  imports = [
    ./desktop/gnome.nix
    ./applications
    ./shell
    ./development
  ];

  programs.home-manager.enable = true;
}
