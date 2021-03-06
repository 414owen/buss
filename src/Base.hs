{-# LANGUAGE OverloadedStrings #-}

module Base (baseTemplate) where

import qualified Data.Text as T
import Text.Blaze.Html.Renderer.Utf8
import Text.Blaze.XHtml5 as H
import Text.Blaze.XHtml5.Attributes as A

import RouteTree

baseTemplate :: Html -> Html -> Servable
baseTemplate title rest = pure $ renderHtml $
  docTypeHtml ! xmlns "http://www.w3.org/1999/xhtml" ! lang "en" $ do
    H.head $ do
      meta ! charset "utf-8"
      meta ! name "viewport" ! content "width=device-width, initial-scale=1"
      meta ! name "description" ! content "bottom-up static sites"
      meta ! name "theme-color" ! content "#000"
      link ! rel "stylesheet" ! href "./css/default.css"
      link ! rel "icon" ! type_ "image/png" ! href "./favicon.png"
      link ! rel "apple-touch-icon" ! href "/favicon.png"
      H.title title
    body $ do
      h1 title
      rest
