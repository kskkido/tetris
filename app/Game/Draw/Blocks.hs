module Game.Draw.Block
  (
  ) where

import Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  )

-- intercept with shape constructor from gloss
drawBlock :: Block -> Block
drawBlock = id

drawTetrabit :: Traits -> Block
drawTetrabit = drawBlock . Tetrabit

drawWall :: Traits -> Block
drawWall = drawBlock . Wall

drawEmpty :: Traits -> Block
drawEmpty = drawBlock . Empty