{ config, lib, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # build tools
    gnumake
    cmake
    automake
    autoconf

    # languages
    python3

    cargo
    rustup
    rust-analyzer

    # misc tools
    jq
    sqlite
    nixfmt
  ];
}
