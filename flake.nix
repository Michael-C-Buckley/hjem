{
  description = "Hjem Configs for Michael";

  inputs.hjem.url = "github:feel-co/hjem";

  outputs = { hjem, ...}: {
    nixosModules.minimal = import ./default.nix { inherit hjem; };

    nixosModules.default = { ... }: {
      imports = [
        (import ./default.nix { inherit hjem; })
        (import ./files/desktop.nix)
      ];
    };
  };
}
