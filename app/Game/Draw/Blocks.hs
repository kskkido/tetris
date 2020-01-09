module Game.Draw.Blocks
  ( drawBlock
  ) where

import Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  )
import Game.Draw.Color
  ( drawColor
  )
import Game.Constants
  ( blockWidth
  , blockHeight
  )
import qualified Theme.Types as T
  ( Color(..)
  )
import qualified Graphics.Gloss as G
  ( Picture
  , Color
  , color
  , pictures
  , rectangleWire
  , rectangleSolid
  )

drawBlock :: Block -> G.Picture
drawBlock b = G.pictures [drawBlockContent b, drawBlockOutline b]

drawBlockContent :: Block -> G.Picture
drawBlockContent b = G.color blockColor blockShape
  where blockColor = drawColor (color $ traits b)
        blockShape = G.rectangleSolid blockWidth blockHeight

drawBlockOutline :: Block -> G.Picture
drawBlockOutline _ = G.color blockColor blockShape
  where blockColor = drawColor T.Black
        blockShape = G.rectangleWire blockWidth blockHeight
