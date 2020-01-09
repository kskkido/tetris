module Game.Render.Pieces
  ( renderPiece
  , renderPieceFromType
  ) where
    
import Game.Render.Block
  ( renderBlock
  )
import Entity.Blocks.Types
  ( Block(..)
  )
import Entity.Grids.Coordinates
  ( coordOp
  )
import Entity.Grids.Pieces
  ( pieceFromType
  )
import Entity.Grids.Types
  ( Board
  , Piece(..)
  , PieceType
  , Coordinate
  )

renderPiece :: Piece -> Coordinate -> Board -> Board
renderPiece p c b = foldr render b (concat p)
  where render (cx,bx) = renderBlock bx $ (coordOp (+) c cx)

renderPieceFromType :: PieceType -> Coordinate -> Board -> Board
renderPieceFromType = renderPiece . pieceFromType