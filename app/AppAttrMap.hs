module AppAttrMap (appAttrMap) where

import Data.Semigroup ((<>))
import Graphics.Vty.Attributes
import Brick.AttrMap
  ( attrMap
  , attrName
  )

defaultAttr :: Attr
defaultAttr = undefined

appAttrMap :: ApplicationState -> AttrMap
appAttrMap = attrMap defaultAttr
  [  

  ]
