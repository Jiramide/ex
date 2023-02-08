module FileSystem.View
  ( FileSystemView
  , viewFromFilePath
  ) where

import System.IO

data FileSystemView
  = DirectoryView FilePath
  | FileView FilePath
  deriving (Show, Eq, Ord)

viewFromFilePath :: FilePath -> IO FileSystemView
viewFromFilePath = do
  return undefined
