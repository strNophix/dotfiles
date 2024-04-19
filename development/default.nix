{pkgs, ...}:
{
  home.packages = with pkgs; [
    python3
    go
    bun
    rustup
    dbeaver
    podman
    podman-compose
    pods
  ];
}
