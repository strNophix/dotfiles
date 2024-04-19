{pkgs, ...}:
{
  home.packages = with pkgs; [
    lunarvim
    htop
    neofetch
    kitty
    fira-code-nerdfont
  ];

  programs.starship = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      ll = "ls -l";
      dc = "podman compose";
      mp = "mkdir -p";
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
    };
  };

  programs.git = {
    enable = true;
    userName  = "Nick";
    userEmail = "curious@duck.com";

    extraConfig = {
      rerere.enabled = true;
      init.defaultBranch = "main";
      maintenance.auto = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "lvim";
  };
}
