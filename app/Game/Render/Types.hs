module Game.Render.Types
  ( RenderedField
  , RenderableField
  ) where

-- replace with drawn block
import Entity.Blocks.Types
  ( Block
  )
import Grid.Types
  ( Grid
  , Cell
  , Coordinate
  )
  
type RenderedField = Grid Block
