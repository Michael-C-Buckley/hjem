{ hjem, ... }:
{
  imports = [
    hjem.nixosModules.default
    ./zsh
  ];
  hjem.users.michael.files = {
    ".gitconfig".source = ./userfiles/.gitconfig;
    "ghostty/config".source = ./userfiles/ghostty;
  };
}
