{ pkgs, ... }: {
  packages = [ pkgs.hlint pkgs.fourmolu ];
  tasks = {
    "ci:lint" = "hlint src/ tests/ && fourmolu --mode check src/ tests/";
    "ci:build" = "cabal build all";
    "ci:test" = "cabal test all";
    "hackage:sdist" = "cabal sdist";
  };
}
