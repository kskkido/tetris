module Grid.Types
  ( Grid
  , Line
  , Cell
  , Coordinate
  ) where

type Grid a = [Line a]
type Line a = [Cell a]
type Cell a = (Coordinate, a)
type Coordinate = (Int,Int)
