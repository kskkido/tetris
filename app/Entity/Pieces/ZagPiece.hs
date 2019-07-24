module Entity.Pieces.ZagPiece
  ( zagPieceL
  , zagPieceR
  ) where

import Entity.Pieces.Types
  ( Piece(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

zagPieceL :: Piece
zagPieceL = Piece
  { shape = [(0,0),(0,1),(1,0),(1,-1)]
  , traits = Traits
      { color = Green
      }
  }
  
zagPieceR :: Piece
zagPieceR = Piece
  { shape = [(0,0),(0,-1),(1,0),(1,1)]
  , traits = Traits
      { color = Red
      }
  }