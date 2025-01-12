# Adds configs for GUI and other non-Server functionality
{ hjem, ... }:
{
  imports = [
    ./minimal.nix {inherit hjem; }
  ];
  hjem.users.michael.files = {
    "ghostty/config".source = ./userfiles/ghostty;
  };
}
