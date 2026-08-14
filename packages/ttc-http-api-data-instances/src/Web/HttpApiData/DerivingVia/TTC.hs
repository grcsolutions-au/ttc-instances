{-# LANGUAGE ScopedTypeVariables #-}

module Web.HttpApiData.DerivingVia.TTC 
( HttpApiDataViaTTC(..)
) where

import Data.Coerce (coerce)
import Data.Text (Text)
import Data.TTC (Parse, Render, parse, render)
import Web.HttpApiData (FromHttpApiData(..), ToHttpApiData(..))

newtype HttpApiDataViaTTC a = HttpApiDataViaTTC { unHttpApiDataViaTTC :: a }

instance (Render a) => ToHttpApiData (HttpApiDataViaTTC a) where
  toUrlPiece = render . unHttpApiDataViaTTC
  toQueryParam = render . unHttpApiDataViaTTC

instance (Parse a) => FromHttpApiData (HttpApiDataViaTTC a) where
  parseUrlPiece = coerce (parse :: Text -> Either Text a)
  parseQueryParam = coerce (parse :: Text -> Either Text a)
