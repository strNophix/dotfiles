{pkgs, ...}: 
{
  imports = [
    ./firefox.nix
  ];

  home.packages = with pkgs; [
    webcord-vencord
    spotify
    steam
    vlc
    obsidian
    obs-studio
    qemu_full
    virt-manager
    anki
    remmina
    r2modman
    mullvad-vpn
    vorta
    ffmpeg
    gimp
    kdenlive
    bitwarden
    obsidian
    gnome-solanum
    libreoffice
  ];

  nixpkgs.config = {
    # For Obisidian
    permittedInsecurePackages = [
      "electron-25.9.0"
    ];
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
  };
 
}
