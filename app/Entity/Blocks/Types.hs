module Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  ) where

import Entity.Grid.Types
  ( Coordinate
  )
import Graphics.Types
  ( Color(..)
  )

data Block = Piece
           { shape :: [Coordinate]
           , traits :: Traits
           }
           | Wall
           | Empty

data Traits = Traits
  { color ::  Color
  }
