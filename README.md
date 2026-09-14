# graphos-types

Standalone, dependency-light Haskell library holding the core data types shared
across Graphos services. Extracted from the `Graphos` monorepo's
`Graphos.Domain.Types.*` modules so downstream services depend on a released
Hackage package instead of sharing source.

## Modules

| Module | Contents |
| --- | --- |
| `Graphos.Types.Node` | `Node`, `NodeId`, `NodeKind` |
| `Graphos.Types.Edge` | `Edge`, `EdgeId`, `EdgeKind` |
| `Graphos.Types.Graph` | `Graph`, `GraphStats` |
| `Graphos.Types.Analysis` | `Analysis`, `AnalysisResult`, `AnalysisConfig`, `AnalysisScope`, `AnalysisStatus`, `AnalysisError` |
| `Graphos.Types.GraphFile` | `GraphFile`, `GraphFileEntry` |
| `Graphos.Types.Writer` | `Writer`, `WriterOutcome` |
| `Graphos.Types.Ingest` | `IngestRequest`, `IngestResponse`, `IngestFailure`, `IngestBatch`, `IngestStats` |

The `Graphos.Types` hub module re-exports everything for convenience.

## Installing

```console
cabal install graphos-types
```

Or add it to a project:

```haskell
-- file.cabal
library
    build-depends:
        graphos-types
```

## Development

Requires GHC 9.10.3 (system-provided) and cabal-install.

```console
cabal build --flag dev
cabal test
```

## License

MIT — see [LICENSE](./LICENSE).
