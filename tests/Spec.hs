-- | Test entry point.
--
-- Runs every spec module under tests/Graphos/** via the default hspec reporter.
module Main where

import qualified Graphos.Types.IngestSpec as IngestSpec
import qualified Graphos.TypesSpec as TypesSpec
import Test.Hspec (hspec)

main :: IO ()
main = hspec $ do
  TypesSpec.spec
  IngestSpec.spec
