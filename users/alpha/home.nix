{ pkgs, ... }:

{
  home.username = "alpha";
  home.homeDirectory = "/home/alpha";
  programs.bash.shellAliases = {
    snvim = "sudo -E nvim";
    fetch = "nix run github:SXSLVT/synfetch -- --nonerd --theme nord";
    rebuild = "sudo nixos-rebuild switch --flake /etc/nixos";
  };

  home.file.".config/i3status/config".source = ../../dotfiles/nord1/i3/i3status-config;
  home.file.".config/alacritty/alacritty.toml".source = ../../dotfiles/nord1/alacritty/alacritty.toml;
  home.file.".config/i3/config".source = ../../dotfiles/nord1/i3/i3-config; 
  home.file.".config/sway/config".source = ../../dotfiles/nord1/sway/sway-config;
  home.file.".config/rofi/config.rasi".source = ../../dotfiles/nord1/rofi/config.rasi;

  home.packages = [
    pkgs.ripgrep
    pkgs.fd
    pkgs.btop
    pkgs.bat
    pkgs.eza
    pkgs.fzf
    pkgs.jq
    
    pkgs.nordic
    pkgs.yaru-theme
    pkgs.papirus-icon-theme
  ];

  programs.bash.enable = true;
  programs.git.enable = true;
  programs.neovim = {
  enable = true;

  plugins = with pkgs.vimPlugins; [
    nord-nvim
    nvim-treesitter
  ];

  initLua = ''
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.termguicolors = true

    vim.cmd("colorscheme nord")
     '';
   };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Nordic";
      icon-theme = "Papirus-Dark";
     # cursor-theme = "Nordic-cursors";
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Nordic";
      package = pkgs.nordic;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    #cursorTheme = {
    #  name = "Nordic-cursors";
    #  package = pkgs.nordic;
    #  size = 24;
    #};
  };

  xdg.configFile."gtk-4.0/settings.ini".text = ''
    [Settings]
    gtk-theme-name=Nordic
    gtk-icon-theme-name=Papirus-Dark
    gtk-cursor-theme-name=Nordic-cursors
    gtk-application-prefer-dark-theme=true
  '';

  home.stateVersion = "26.05";
}
