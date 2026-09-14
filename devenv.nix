{ pkgs, lib, config, ... }:

{
  # Development shell for the graphos-types library.
  # Provides GHC + cabal-install so `cabal build --flag dev` and `cabal test`
  # work. The system ships GHC 9.10.3; pin to a different version here if needed.

  packages = [
    pkgs.ghc
    pkgs.cabal-install
    pkgs.haskellPackages.hlint
    pkgs.direnv
    pkgs.git
  ];

  env = {
    GRAPHOS_TYPES_ENV = "dev";
  };

  shell.builtin = [
    "echo 'graphos-types dev shell ready. Run: cabal build --flag dev && cabal test'"
  ];
}
