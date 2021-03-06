# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    #./fonts-configuration.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "buacat"; # Define your hostname.
  #networking.wireless.enable = true;
  networking.wireless.iwd.enable = true; # iwd
  #networking.networkmanager.enable = true;
  #networking.networkmanager.wifi.backend = "iwd";

  # Set your time zone.
  time.timeZone = "Canada/Eastern";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  #networking.interfaces.enp44s0.useDHCP = true;
  #networking.interfaces.wlp0s20f3.useDHCP = true;
  networking.interfaces.wlan0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # Enable the X11 windowing system.
  # services.xserver.enable = true;

  # Configure keymap in X11
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  # hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.bualy = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.fish;
  };
  users.users.testuser = {
    isNormalUser = true;
    shell = pkgs.fish;
  };

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  users.users.root.shell = pkgs.fish;

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # so that gtk works properly
    extraPackages = with pkgs; [ swaylock swayidle wl-clipboard ];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    acpi
    brightnessctl
    nixfmt
    alacritty
    neofetch
    htop
    git
    firefox
    github-cli
    keepassxc
    rclone
    mpv
    ffmpeg
    yt-dlp
    pavucontrol
    bemenu
    grim
    pngquant
    gimp
    imv
    aria2
    bat
    gocryptfs
    hexyl
    ripgrep
    rhash
    p7zip
    sshfs
    libreoffice
    pandoc
    tetex
    file
    element-desktop
    nheko
    ungoogled-chromium
    qbittorrent
    audacity
    mumble
    killall
    qutebrowser
  ];

  environment.variables = rec {
    EDITOR = "vim";
    MOZ_ENABLE_WAYLAND = "1";
  };

  services.gnome.gnome-keyring.enable = true;
  services.earlyoom.enable = true;

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;

    media-session.enable = true; # tfw wireplumber isn't even packaged
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    passwordAuthentication = false;
    permitRootLogin = "no";
    challengeResponseAuthentication =
      false; # https://blog.tankywoo.com/2013/09/14/ssh-passwordauthentication-vs-challengeresponseauthentication.html
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  #opengl
  hardware.opengl.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
  ];
}

