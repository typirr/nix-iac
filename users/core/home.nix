{ pkgs, ... }:

{
  home.username = "core";
  home.homeDirectory = "/home/core";
  programs.bash.shellAliases = {
    svim = "sudo -E vim";
    snvim = "sudo -E nvim";
    rebuild = "sudo nixos-rebuild switch --flake .";
  };
  
  home.packages = with pkgs; [
    ripgrep
    fd
    btop
    bat
    eza
    fzf
    jq
  ];

  programs.bash.enable = true;
  programs.git.enable = true;
  programs.neovim.enable = true;
  programs.vim.enable = true;

  home.stateVersion = "26.05";
}
