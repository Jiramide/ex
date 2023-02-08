module Spec.CursorSpec (spec) where

import Test.Hspec
import FileSystem.Cursor
import FileSystem.View (FileSystemView(..))

{- ~/some/path/to/a/
 -  - dir/
 -      - abc/
 -      - efg/
 -      - hij.txt <- Selected
 -      - klm.lua
 -      - opq.hs
 -}
testCursor :: FileSystemCursor
testCursor = 
  FileSystemCursor
    { path = "~/some/path/to/a/dir"
    , parent = Just $ DirectoryView "~/some/path/to/a"
    , child = Nothing
    , cursorPrev = ["efg/", "abc/"]
    , cursorNext = ["hij.txt", "klm.lua", "opq.hs"]
    }

testCursorDown :: FileSystemCursor
testCursorDown =
  FileSystemCursor
    { path = "~/some/path/to/a/dir"
    , parent = Just $ DirectoryView "~/some/path/to/a"
    , child = Nothing
    , cursorPrev = ["hij.txt", "efg/", "abc/"]
    , cursorNext = ["klm.lua", "opq.hs"]
    }

testCursorUp :: FileSystemCursor
testCursorUp =
  FileSystemCursor
    { path = "~/some/path/to/a/dir"
    , parent = Just $ DirectoryView "~/some/path/to/a"
    , child = Nothing
    , cursorPrev = ["abc/"]
    , cursorNext = ["hij.txt", "efg/", "klm.lua", "opq.hs"]
    }

spec :: Spec
spec = do
  describe "FileSystem.Cursor" $ do
    it "should move down successfully if there are more elements below the currently selected item" $ do
      fileSystemDown testCursor `shouldBe` testCursorDown

    it "should move up successfully if there are more elements above the currently selected item" $ do
      fileSystemDown testCursor `shouldBe` testCursorUp
