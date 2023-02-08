module Lib
  ( FileSystemView
  , FileSystemCursor
  , fileSystemDown
  , fileSystemUp
  , fileSystemFocusParent
  , fileSystemFocusChild
  ) where

import System.IO

data FileSystemView
  = DirectoryView FilePath
  | FileView FilePath
  deriving (Show, Eq, Ord)

data FileSystemCursor = 
  FileSystemCursor
    { path :: FilePath
    , parent :: Maybe FileSystemView
    , child :: Maybe FileSystemView
    , cursorPrev :: [FilePath]
    , cursorNext :: [FilePath]
    }
  deriving (Show, Eq, Ord)

fileSystemDown :: FileSystemCursor -> Maybe FileSystemCursor
fileSystemDown = undefined

fileSystemUp :: FileSystemCursor -> Maybe FileSystemCursor
fileSystemUp = undefined

fileSystemFocusParent :: FileSystemCursor -> Maybe FileSystemCursor
fileSystemFocusParent = undefined

fileSystemFocusChild :: FileSystemCursor -> Maybe FileSystemCursor
fileSystemFocusChild = undefined

cursorFromFilePath :: FilePath -> IO FileSystemCursor
cursorFromFilePath = do
  return undefined

viewFromFilePath :: FilePath -> IO FileSystemCursor
viewFromFilePath = do
  return undefined
