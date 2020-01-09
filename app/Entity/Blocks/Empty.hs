module Entity.Blocks.Empty
  ( empty
  ) where

import Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

empty :: Block
empty = Empty
  { traits = Traits
    { color = White
    }
  }
  