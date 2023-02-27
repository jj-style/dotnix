{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # browsers
    firefox
    librewolf
    tor-browser-bundle-bin

    # misc desktop apps
    bitwarden
    bitwarden-cli
    galculator

    # system apps
    gitFull
    vim
    direnv
    tree
    htop
    wget
    mpv
    dmenu
    tealdeer
    ranger
    chezmoi
    powerline-fonts
    powerline-symbols
    #nerdfonts

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
    ytfzf
  ];
}
