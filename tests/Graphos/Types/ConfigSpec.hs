{-# LANGUAGE OverloadedStrings #-}
module Graphos.Types.ConfigSpec where

import Test.Hspec
import Data.Aeson (decode, encode)

import Graphos.Types.Config (GraphosConfig, defaultGraphosConfig)
import Graphos.Types.Config.Extraction (LSPServerConfig(..))
import Graphos.Types.Config.Detection (DetectionConfig, defaultDetectionConfig)
import Graphos.Types.Pipeline (PipelineConfig(..), defaultConfig)

spec :: Spec
spec = do
  describe "LSPServerConfig JSON round-trip" $ do
    it "round-trips default server configs" $ do
      let cfg = LSPServerConfig "cmd" ["--stdio"] "lang"
      (decode (encode cfg) :: Maybe LSPServerConfig) `shouldBe` Just cfg

    it "uses snake_case language_id key" $ do
      let enc = show (encode (LSPServerConfig "cmd" [] "lang"))
      enc `shouldContain` "language_id"
      enc `shouldNotContain` "languageId"

  describe "DetectionConfig JSON round-trip" $ do
    it "round-trips default detection config" $ do
      (decode (encode defaultDetectionConfig) :: Maybe DetectionConfig) `shouldBe` Just defaultDetectionConfig

  describe "GraphosConfig JSON round-trip" $ do
    it "round-trips default graphos config" $ do
      (decode (encode defaultGraphosConfig) :: Maybe GraphosConfig) `shouldBe` Just defaultGraphosConfig

  describe "PipelineConfig surface" $ do
    it "exposes PipelineConfig constructor" $ do
      (cfgInputPath defaultConfig) `shouldBe` "."
