{-# LANGUAGE ScopedTypeVariables #-}

module Data.OpenApi.ParamSchema.DerivingVia.TTC
( EnumParamSchemaViaTTC(..)
) where

import Data.Aeson (Value(String))
import Data.OpenApi (Schema(_schemaType, _schemaEnum), ToParamSchema(..), OpenApiType(OpenApiString))
import Data.TTC (Render, render)

newtype EnumParamSchemaViaTTC a = EnumParamSchemaViaTTC { unEnumParamSchemaViaTTC :: a }

instance (Render a, Bounded a, Enum a) => ToParamSchema (EnumParamSchemaViaTTC a) where
  toParamSchema _ = mempty
    { _schemaType = Just OpenApiString
    , _schemaEnum = Just $ map (String . render) [minBound :: a .. maxBound :: a]
    }
