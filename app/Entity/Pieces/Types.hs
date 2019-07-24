module Entity.Pieces.Types
  ( Piece(..)
  , Traits(..)
  ) where

import Theme.Types
  ( Color(..)
  )
import Grid.Types
  ( Coordinate
  )

data Piece = Piece
  { shape :: [Coordinate]
  , traits :: Traits
  } deriving (Show, Read, Eq)

data Traits = Traits
  { color ::  Color
  } deriving (Show, Read, Eq)
