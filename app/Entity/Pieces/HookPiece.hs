module Entity.Pieces.HookPiece
  ( hookPieceL
  , hookPieceR
  ) where

import Entity.Pieces.Types
  ( Piece(..)
  , Traits(..)
  )
import Theme.Types
  ( Color(..)
  )

hookPieceL :: Piece
hookPieceL = Piece
  { shape = [(0,0),(1,0),(2,0),(2,-1)]
  , traits = Traits
      { color = Orange
      }
  }

hookPieceR :: Piece
hookPieceR = Piece
  { shape = [(0,0),(1,0),(2,0),(2,1)]
  , traits = Traits
    { color = Blue
    }
  }
