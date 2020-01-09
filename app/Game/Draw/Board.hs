module Game.Draw.Board
  ( drawBoard
  ) where

import Game.Draw.Blocks
  ( drawBlock
  )
import Entity.Grids.Types
  ( Board
  , BoardCell
  )
import Game.Constants
  ( blockWidth
  , blockHeight
  )
import Graphics.Gloss
  ( Picture
  , pictures
  , translate
  )

drawBoard :: Board -> Picture
drawBoard = drawRows
  where drawRows = pictures . map drawCols
        drawCols = pictures . map drawCell

drawCell :: BoardCell -> Picture
drawCell ((x,y),b) = translate offsetX offsetY (drawBlock b)
  where offsetX = fromIntegral x * blockWidth
        offsetY = fromIntegral (-y) * blockHeight
