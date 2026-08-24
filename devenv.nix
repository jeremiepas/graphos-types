{ pkgs, lib, config, ... }:

let
  hp = pkgs.haskell.packages.ghc910;
in
{
  languages.haskell.enable = true;
  languages.haskell.package = hp.ghc;
  languages.haskell.cabal.package = hp.cabal-install;
  languages.haskell.lsp.package = hp.haskell-language-server;

  packages = [
    hp.ghc
    hp.cabal-install
    hp.haskell-language-server
    hp.hspec-discover
  ];

  tasks = {
    "ci:build" = {
      exec = "cabal build all";
    };
    "ci:test" = {
      exec = "cabal test all";
      after = [ "ci:build@succeeded" ];
    };
    "hackage:sdist" = {
      exec = "cabal sdist";
    };
  };

  enterShell = ''
    echo "[graphos-types] devenv shell — GHC $(ghc --version 2>/dev/null | head -1)"
  '';
}