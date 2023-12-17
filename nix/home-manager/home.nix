{ config, pkgs, ... }:

{
  imports = [
  ./apps/codium.nix
  ];
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };	
  home.username = "sanketh";
  home.homeDirectory = "/home/sanketh";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [
	  vim
	  neofetch
	  jq
    nodejs_20
    rustc
    rustup
    fira-code-nerdfont
    fzf
    bat
    zoxide
    lazygit
    eza
  ];
  programs.home-manager.enable = true;
}

