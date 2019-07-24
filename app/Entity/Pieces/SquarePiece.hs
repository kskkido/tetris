module Entity.Pieces.SquarePiece
  ( squarePiece
  ) where

import Entity.Pieces.Types
  ( Piece(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

squarePiece :: Piece
squarePiece = Piece
  { shape = [(0,0),(1,0),(1,1),(0,1)]
  , traits = Traits
      { color = Yellow
      }
  }
