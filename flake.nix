{
  description = "Hjem Configs for Michael";

  inputs.hjem.url = "github:feel-co/hjem";

  outputs = { hjem, ...}: {
    nixosModules.minimal = import ./hjem/minimal.nix { inherit hjem; };

    nixosModules.default = { ... }: {
      imports = [
        (import ./hjem/minimal.nix { inherit hjem; })
        (import ./hjem/desktop.nix)
      ];
    };
  };
}
