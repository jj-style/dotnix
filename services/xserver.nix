{ config, pkgs, ... }: {
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;

    # Configure keymap in X11
    layout = "gb";
    xkbVariant = "";

    # Enable lightdm display manager.
    displayManager = {
      lightdm = {
        enable = true;
        greeters.slick.enable = true;
        background = "/usr/share/backgrounds/lightdm-bg.png";
        #extraConfig = ''
        #'';
      };
    };

    # Enable the XFCE Desktop Environment.
    desktopManager = { xfce = { enable = true; }; };

    # Enable touchpad support (enabled default in most desktopManager).
    libinput = { enable = true; };
  };
}
