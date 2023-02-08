module Main (main) where

import Lib
import App (app, buildInitialState)
import Brick.Main (defaultMain)

main :: IO ()
main = buildInitialState >>= defaultMain app initialState
