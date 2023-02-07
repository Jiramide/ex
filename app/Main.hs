module Main (main) where

import Lib
import App (app, initialState)
import Brick.Main (defaultMain)

main :: IO ()
main = defaultMain app initialState
