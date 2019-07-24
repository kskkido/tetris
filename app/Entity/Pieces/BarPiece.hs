module Entity.Pieces.BarPiece
  ( barPiece
  ) where

import Entity.Pieces.Types
  ( Piece(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

barPiece :: Piece
barPiece = Piece
  { shape = [(0,0),(1,0),(2,0),(3,0)]
  , traits = Traits
      { color = LightBlue
      }
  }
