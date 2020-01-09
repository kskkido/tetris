module Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  ) where

import Theme.Types
  ( Color(..)
  )

data Block = TetraBit
  {
    traits :: Traits
  }
           | Wall
  {
    traits :: Traits
  }
           | Empty
  {
    traits :: Traits
  }
    deriving (Show, Read, Eq)

data Traits = Traits
  { color :: Color
  } deriving (Show, Read, Eq)
