{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    # de stuff
    swww
    eww
    waybar
    networkmanagerapplet
    kitty
    dunst
    rofi-wayland
    slurp
    grim
    swappy
    bash
    thunderbird
    wpgtk
    wl-clipboard
    wlogout
    polkit_gnome
    libnotify
    unrar
    unzip
    yad
    lm_sensors
    cliphist
    brightnessctl
    mpv
    # audio
    wireplumber
    pavucontrol
    xfce.thunar
    xfce.thunar-volman
    # programs
    vesktop
    udiskie
    ungoogled-chromium
    firefox
    anki-bin
    obsidian
    gimp
    spicetify-cli
    hyprpicker
    neovide
    soulseekqt
    nicotine-plus
    webcamoid
    lutris
    wine
    winetricks
    protonup-qt
    # cli programs
    vim
    ncspot
    socat
    bat
    gh # github cli
    git
    lazygit
    xdg-utils
    lshw
    lsd
    neofetch
    nitch
    cowsay
    fzf
    ripgrep
    atuin
    zoxide
    btop
    nh
    wget
    clinfo
    ydotool
    curl
    starship
    qmk
    ffmpegthumbnailer
    ffmpeg
    unar
    jq
    poppler
    fd
    file
    ripgrep
    spotdl
    # libs/frameworks
    qt6.qtwayland
    libsForQt5.qt5.qtwayland
    ninja
    python3
    meson
    nodejs
    pkg-config
    v4l-utils
    nixfmt-rfc-style
    #vm
    qemu
  ];

  #nix options pkgs
  programs = {
    neovim.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    starship.enable = true;
    dconf.enable = true;
    bash.blesh.enable = true;
    nm-applet.enable = true;
    steam.enable = true;
    virt-manager.enable = true;
  };

  #fonts
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-color-emoji
    material-icons
    liberation_ttf
    font-awesome
    fira-code
    fira-code-symbols
    hack-font
    symbola
    jetbrains-mono
    nerdfonts
  ];
}
