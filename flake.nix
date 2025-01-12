{
  description = "Hjem Configs for Michael";

  inputs.hjem.url = "github:feel-co/hjem";

  outputs = { hjem, ...}: {
    nixosModules.minimal = import ./hjem/minimal.nix { inherit hjem; };
    nixosModules.default = import [
      ./hjem/minimal.nix { inherit hjem; }
      ./hjem/desktop.nix
    ];
  };
}
