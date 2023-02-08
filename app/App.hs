module App
  ( app
  , buildInitialState
  ) where

import Brick.Main 
  ( App(..)
  , BrickEvent
  )

import Brick.Types
  ( Widget(..)
  , CursorLocation(..)
  , BrickEvent(..)
  )

import AppEvent

type ApplicationState = String
type EventType = String
type ResourceName = String

appDraw :: ApplicationState -> [Widget ResourceName]
appDraw = undefined

appChooseCursor :: ApplicationState -> [CursorLocation ResourceName] -> Maybe (CursorLocation ResourceName) 
appChooseCursor = undefined

buildInitialState :: IO ApplicationState
buildInitialState = do
  return undefined

app :: App 
app = App
  { appDraw = appDraw
  , appChooseCursor = appChooseCursor
  , appHandleEvent = appHandleEvent
  , appStartEvent = appStartEvent
  , appAttrMap = appAttrMap
  }

