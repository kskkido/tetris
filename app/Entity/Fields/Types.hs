module Entity.Fields.Types
  ( Field
  , FieldCell
  ) where

import Entity.Blocks.Types
  ( Block
  )
import Grid.Types
  ( Grid
  , Cell
  , Coordinate
  )

type Field = Grid Block
type FieldCell = Cell Block
