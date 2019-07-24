module Entity.Blocks.Types
  ( Block(..)
  ) where

import Theme.Types
  ( Color(..)
  )
import Grid.Types
  ( Coordinate
  )


data Block = Tetrabit
  {
    traits :: Traits
  }
           | Wall
           | Empty
    deriving (Show, Read, Eq)

data Traits = Traits
  { color ::  Color
  } deriving (Show, Read, Eq)
