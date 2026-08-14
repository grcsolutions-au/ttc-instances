{-# LANGUAGE ScopedTypeVariables #-}

module Autodocodec.DerivingVia.TTC
( EnumHasCodecViaTTC(..)
) where

import Autodocodec (HasCodec(..), JSONCodec, boundedEnumCodec)
import Data.Coerce (coerce)
import Data.TTC (Render, render)

newtype EnumHasCodecViaTTC a = EnumHasCodecViaTTC { unEnumHasCodecViaTTC :: a }

instance (Eq a, Render a, Bounded a, Enum a) => HasCodec (EnumHasCodecViaTTC a) where
  codec = coerce ((boundedEnumCodec render) :: JSONCodec a)
