module FileSystem.Cursor
  ( FileSystemCursor
  , fileSystemDown
  , fileSystemUp
  , fileSystemFocusParent
  , fileSystemFocusChild
  , cursorFromFilePath
  ) where

import System.IO

data FileSystemCursor = 
  FileSystemCursor
    { path :: FilePath
    , parent :: Maybe FileSystemCursor
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

fileSystemCursorEmpty :: FileSystemCursor -> Bool
fileSystemCursorEmpty = undefined

cursorFromFilePath :: FilePath -> IO (Maybe FileSystemCursor)
cursorFromFilePath = do
  return undefined
