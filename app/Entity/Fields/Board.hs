module Entity.Fields.Board
  ( initBoard
  ) where

import Entity.Fields.Types
  ( Field
  )
import Entity.Blocks.Types
  ( Block (..)
  )
import Grid.Create
  ( createGrid
  )

initBoard :: Int -> Int -> Field
initBoard x y   = delimit emptyBoard
  where delimit = map (take x) . take y

emptyBoard :: Field
emptyBoard = createGrid rows
  where rows = repeat cols
        cols = repeat Empty
