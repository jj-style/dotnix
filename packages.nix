{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # browsers
    firefox
    librewolf
    tor-browser-bundle-bin

    # misc desktop apps
    bitwarden
    bitwarden-cli

    # system apps
    gitFull
    vim
    direnv
    tree
    htop
    tealdeer
    chezmoi
    powerline-fonts
    powerline-symbols
    nerdfonts

    # cli apps/utils
    fzf
    fd
    ripgrep
    ripgrep-all
    tmux
    bat
    delta
    gitui
    starship
  ];
}
