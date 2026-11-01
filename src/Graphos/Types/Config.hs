-- | Domain configuration types for Graphos.
-- Re-export module — all types are defined in focused sub-modules.
-- Pure data types — no IO. Config file loading lives in Infrastructure.
module Graphos.Types.Config
  ( -- * Extractor mode
    ExtractorMode(..)
  , ExtractorConfig(..)
  , defaultExtractors

    -- * Extraction granularity
  , Granularity(..)
  , defaultGranularity

    -- * PDF extraction modes
  , PdfExtractionMode(..)
  , defaultPdfExtractionMode

    -- * LSP configuration
  , LSPServerConfig(..)
  , defaultLSPServers
  , defaultLanguageIds

    -- * File extension configuration
  , FileExtensionConfig(..)
  , defaultFileExtensions

     -- * Neo4j configuration
  , Neo4jConfig(..)
  , defaultNeo4jConfig

     -- * Memgraph configuration
  , MemgraphConfig(..)
  , defaultMemgraphConfig

     -- * LLM labeling configuration
  , LabelingConfig(..)
  , defaultLabelingConfig

     -- * Observability configuration
  , ObservabilityConfig(..)
  , defaultObservabilityConfig
  , OtelConfig(..)
  , defaultOtelConfig

      -- * Embedding configuration
  , EmbeddingConfig(..)
  , defaultEmbeddingConfig
  , validateEmbeddingConfig

      -- * Semantic edge inference configuration
  , SemanticEdgesConfig(..)
  , defaultSemanticEdgesConfig
  , defaultPathExtensions

     -- * Vision configuration
  , VisionConfig(..)
  , defaultVisionConfig

      -- * Top-level configuration
  , GraphosConfig(..)
  , defaultGraphosConfig

     -- * Ingest configuration
  , IngestConfig(..)
  , IngestUrlConfig(..)
  , IngestCategoryConfig(..)
  , IngestCategories(..)
  , FileEntry(..)
  , defaultIngestConfig

     -- * Memory budget policy
  , Bytes
  , MemInfo(..)
  , Verdict(..)
  , MemoryBudgetSetting(..)
  , MemoryConfig(..)
  , defaultMemoryConfig
  , memorySafetyReserve
  , memoryBudgetFloor
  , memoryBudgetCeiling
  , deriveBudget
  , preFlightVerdict
  , projectedEmbeddingBytes
  , parseByteSize
  , formatBytes

     -- * Config merging
  , mergeGraphosConfig
  , mergeObservabilityConfig

     -- * Multi-source configuration
  , SourceConfig(..)
  , mkSourceConfig
  , validSources

     -- * Content-cache policy
  , CacheConfig(..)
  , defaultCacheConfig

     -- * Output directory resolution
  , defaultOutputDirName
  , resolveOutputDir
  , effectiveOutputDir
  ) where

import Graphos.Types.Config.Cache
import Graphos.Types.Config.Core
import Graphos.Types.Config.Extraction
import Graphos.Types.Config.Export
import Graphos.Types.Config.Ingest
import Graphos.Types.Config.Memory
import Graphos.Types.Config.Observability
import Graphos.Types.Config.Output
import Graphos.Types.Config.Source
import Graphos.Types.Config.Vision