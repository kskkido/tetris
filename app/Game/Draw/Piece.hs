module Game.Draw.Piece
  ( drawPiece
  ) where

import Game.Constants
  ( blockWidth
  , blockHeight
  )
import Game.Draw.Blocks
  ( drawBlock
  )
import Entity.Blocks.Types
  ( Block(..)
  )
import Entity.Grids.Types
  ( Piece(..)
  , Coordinate
  )
import Graphics.Gloss
  ( Picture
  , pictures
  , translate
  )

drawPiece :: Piece -> Picture
drawPiece = pictures . map drawPieceLine

drawPieceLine :: [(Coordinate, Block)] -> Picture
drawPieceLine = pictures . map drawPieceCell . filter drawable
  where drawable (_, TetraBit _) = True
        drawable (_, _)          = False

drawPieceCell :: (Coordinate, Block) -> Picture
drawPieceCell ((x,y),b) = translate offsetX offsetY $ drawBlock b
  where offsetX = fromIntegral x * blockWidth
        offsetY = fromIntegral (-y) * blockHeight