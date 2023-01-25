{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "aub";
  home.homeDirectory = "/home/aub";

  home.packages = with pkgs; [
    age
    alacritty
    blender
    btop
    comic-mono
    feh
    gnome.gnome-disk-utility
    ghc
    gimp
    godot
    krita
    lorien
    minetest
    ncdu
    pfetch
    qutebrowser
    rofi
    scrot
    tmux
    vim
  ];
  
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
