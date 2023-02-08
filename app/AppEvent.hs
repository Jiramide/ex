module AppEvent
  ( appStartEvent
  , appHandleEvent
  ) where

appStartEvent :: EventM ResourceName ApplicationState ()
appStartEvent = undefined

appHandleEvent :: BrickEvent ResourceName EventType -> EventM ResourceName ApplicationState ()
appHandleEvent = undefined
