-- | Ignore pattern handling for .graphosignore and .gitignore files.
-- Pure data types extracted for use in 'PipelineConfig'.
module Graphos.Types.Ignore
  ( -- * Pattern types
    IgnorePattern(..)
  , NegatePattern(..)
  , AnnotatedPattern(..)
  ) where

import GHC.Generics (Generic)

-- | A simplified ignore pattern
data IgnorePattern
  = PrefixPattern String
  | SuffixPattern String
  | ExactPattern String
  | GlobPattern String
  | WildcardPattern String
  deriving (Eq, Show, Generic)

-- | A negation pattern — re-includes a path that would otherwise be ignored.
newtype NegatePattern = NegatePattern IgnorePattern
  deriving (Eq, Show, Generic)

-- | An annotated pattern that tracks its source priority.
data AnnotatedPattern = AnnotatedPattern
  { apPattern   :: IgnorePattern
  , apNegate    :: Bool
  , apPriority  :: Int
  } deriving (Eq, Show, Generic)
