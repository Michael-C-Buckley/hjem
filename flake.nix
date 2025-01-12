{
  description = "Hjem Configs for Michael";

  inputs.hjem.url = "github:feel-co/hjem";

  outputs = { hjem, ...}: {
    nixosModules.default = import ./hjem/desktop.nix { inherit hjem; };
    nixosModules.minimal = import ./hjem/minimal.nix { inherit hjem; };
  };
}
