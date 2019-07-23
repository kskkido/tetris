module Entity.Blocks.Piece
  ( barPiece
  , hookPieceL
  , hookPieceR
  , squarePiece
  , treePiece
  , zagPieceL
  , zagPieceR
  ) where

import Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  )
import Graphics.Types
  ( Color(..)
  )

barPiece :: Block
barPiece = Piece
  { shape = [(0,0),(1,0),(2,0),(3,0)]
  , traits = Traits
      { color = LightBlue
      }
  }

hookPieceL :: Block
hookPieceL = Piece
  { shape = [(0,0),(1,0),(2,0),(2,-1)]
  , traits = Traits
      { color = Orange
      }
  }

hookPieceR :: Block
hookPieceR = Piece
  { shape = [(0,0),(1,0),(2,0),(2,1)]
  , traits = Traits
    { color = Blue
    }
  }

squarePiece :: Block
squarePiece = Piece
  { shape = [(0,0),(1,0),(1,1),(0,1)]
  , traits = Traits
      { color = Yellow
      }
  }

treePiece :: Block
treePiece = Piece
  { shape = [(0,0),(1,0),(1,-1),(1,1)]
  , traits = Traits
      { color = Purple
      }
  }

zagPieceL :: Block
zagPieceL = Piece
  { shape = [(0,0),(0,1),(1,0),(1,-1)]
  , traits = Traits
      { color = Green
      }
  }
  
zagPieceR :: Block
zagPieceR = Piece
  { shape = [(0,0),(0,-1),(1,0),(1,1)]
  , traits = Traits
      { color = Red
      }
  }