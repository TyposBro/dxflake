{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs; [
  /* de stuff */
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
  wallust
  /* audio */
  wireplumber
  pavucontrol
  xfce.thunar
  xfce.thunar-volman
  /* programs */
  vesktop
  udiskie
  virt-manager
  chromium
  firefox
  wine
  ncspot
  lutris
  protonup-qt
  anki-bin
  obsidian
  vim
  steam
  winetricks
  gimp
  spicetify-cli
  hyprpicker
  /* cli programs */
  socat
  bat
  gh #github cli
  git
  lazygit
  toybox
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
  unar
  jq
  poppler
  fd
  file
  ripgrep
  /* libs/frameworks */
  qt6.qtwayland
  libsForQt5.qt5.qtwayland
  ninja
  python3
  meson
  nodejs
  pkg-config
  v4l-utils
  # personal
   vscode
   gnome3.gnome-tweaks
   zsh
   oh-my-zsh
   spotify
   android-studio
   bun
   protonvpn-gui
   galaxy-buds-client
   easyeffects
   variety
   xorg.xrandr
   busybox  
   openjdk11
   github-desktop
   openssl
   android-tools   
   qbittorrent
   telegram-desktop
   discord
   rhythmbox
  ];

  #nix options pkgs
  programs = {
    neovim.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    yazi = {
      enable = true;
    };
    starship.enable = true;
    dconf.enable = true;
    bash.blesh.enable = true;
    fzf.fuzzyCompletion = true;
    nm-applet.enable = true;
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
    jetbrains-mono
    nerdfonts
  ];

}
