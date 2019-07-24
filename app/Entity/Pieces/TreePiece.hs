module Entity.Pieces.TreePiece
  ( treePiece
  ) where

import Entity.Pieces.Types
  ( Piece(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

treePiece :: Piece
treePiece = Piece
  { shape = [(0,0),(1,0),(1,-1),(1,1)]
  , traits = Traits
      { color = Purple
      }
  }
