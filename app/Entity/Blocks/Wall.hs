module Entity.Blocks.Wall
  ( wall
  ) where

import Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

wall :: Block
wall = Wall
  { traits = Traits
    { color = Black
    }
  }
