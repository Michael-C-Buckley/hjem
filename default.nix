{ hjem, ... }:
{
  imports = [
    hjem.nixosModules.default
    ./files
  ];

  hjem = {
    clobberByDefault = true;
    users.michael = {
      enable = true;
      user = "michael";
      directory = "/home/michael";
    };
  };
}
