{pkgs, ...}:
{
  home.packages = with pkgs; [
    adw-gtk3
    gnome.gnome-tweaks
    gnomeExtensions.gsconnect
    gnomeExtensions.caffeine
    gnomeExtensions.dash-to-dock
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      "gtk-theme" = "adw-gtk3-dark";
      "color-scheme" = "prefer-dark";
    };
    "org/gnome/desktop/background" = {
      "picture-uri-dark" = "/home/nick/.config/home-manager/wallpapers/ina.jpg";
    };
    "org/gnome/desktop/wm/preferences" = {
      "button-layout" = "appmenu:minimize,maximize,close";
    };
    "org/gnome/shell" = {
      "favorite-apps" = [
        "org.gnome.Nautilus.desktop"
        "org.gnome.Calendar.desktop"
        "firefox.desktop"
        "kitty.desktop"
        "dbeaver.desktop"
        "discord.desktop"
        "spotify.desktop"
        "steam.desktop"
        "bitwarden.desktop"
        "obsidian.desktop"
        "org.gnome.Settings.desktop"
      ];
    };
  };
}
