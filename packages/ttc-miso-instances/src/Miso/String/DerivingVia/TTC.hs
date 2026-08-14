{-# LANGUAGE ScopedTypeVariables #-}

module Miso.String.DerivingVia.TTC
( MisoViaTTC(..)
) where

import Data.Text (Text)
import Data.TTC (Render, render)
import Miso.String (ToMisoString(..), ms) 

newtype MisoViaTTC a = MisoViaTTC { unMisoViaTTC :: a }

instance Render a => ToMisoString (MisoViaTTC a) where
  toMisoString = ms . (render :: a -> Text) . unMisoViaTTC
