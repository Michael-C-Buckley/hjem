{
  description = "Hjem Configs for Michael";

  inputs.hjem.url = "github:feel-co/hjem";

  outputs = { hjem, ...}: {
    nixosModules.default = import ./hjem { inherit hjem; };
  };
}
