{
  description = "A very basic flake w/o flake-utils";

  nixConfig.bash-promp = "nix-dev: \\w\\$ ";
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.hello;
  };
}
