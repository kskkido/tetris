module Entity.Grids.Board
  ( initBoard
  , createBoard
  , delimitBoard
  ) where

import Entity.Grids.Types
  ( Board
  , BoardCell
  , Coordinate
  )
import Entity.Grids.Coordinates
  ( zipWithCoords
  )
import Entity.Blocks.Types
  ( Block
  )
import Entity.Blocks.Empty
  ( empty
  )
import Data.List
  ( find
  )
import Data.Maybe
  ( isJust
  )

initBoard :: Int -> Int -> Board
initBoard x y = createBoard x y blocks
  where blocks = repeat $ repeat empty

createBoard :: Int -> Int -> [[Block]] -> Board
createBoard x y = delimitBoard x y . zipWithCoords

delimitBoard :: Int -> Int -> Board -> Board
delimitBoard x y = map (take x) . take y
