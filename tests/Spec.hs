-- | Test entry point.
--
-- Runs the single spec module in tests/Graphos/TypesSpec.hs via the default
-- hspec reporter (hspec uses the default config).
module Main where

import qualified Graphos.TypesSpec
import Test.Hspec (hspec)

main :: IO ()
main = hspec Graphos.TypesSpec.spec
