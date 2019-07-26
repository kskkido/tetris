module Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
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
  {
    traits :: Trats
  }
           | Empty
  {
    traits :: Traits
  }
    deriving (Show, Read, Eq)

data Traits = Traits
  { color ::  Color
  } deriving (Show, Read, Eq)
