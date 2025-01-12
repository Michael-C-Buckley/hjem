{
  description = "Hjem Configs for Michael";

  inputs.hjem.url = "github:feel-co/hjem";

  outputs = {...}: {
    nixosModules.default = import ./hjem;
  };
}
