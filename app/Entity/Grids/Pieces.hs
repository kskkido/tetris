module Entity.Grids.Pieces
  ( pieceFromType
  , pieceMetaFromType
  ) where

import Entity.Grids.Types
  ( Piece
  , PieceMeta(..)
  , PieceType(..)
  , PieceShape
  , PieceShapeBlock(..)
  )
import Entity.Grids.Coordinates
  ( zipWithCoords
  )
import Entity.Blocks.Types
  ( Block(..)
  , Traits(..)
  )
import Entity.Blocks.Empty
  ( empty
  )
import Theme.Types
  ( Color(..)
  )

pieceFromType :: PieceType -> Piece
pieceFromType = pieceFromMeta . pieceMetaFromType

pieceFromMeta :: PieceMeta -> Piece
pieceFromMeta m = zipWithCoords $ renderRows $ pieceShape m
  where renderRows = map renderCols
        renderCols = map (blockFromShapeBlock $ blockTraits m)

pieceMetaFromType :: PieceType -> PieceMeta
pieceMetaFromType I = PieceMeta
  { pieceShape = 
      [ replicate 4 Void
      , replicate 4 Filled
      , replicate 4 Void
      , replicate 4 Void
      ]
  , blockTraits = Traits
      { color = Cyan
      }
  }
pieceMetaFromType L = PieceMeta
  { pieceShape =
      [ [Void, Void, Filled]
      , replicate 3 Filled
      , replicate 3 Void
      ]
  , blockTraits = Traits
      { color = Orange
      }
  }
pieceMetaFromType J = PieceMeta
  { pieceShape =
    [ [Filled, Void, Void]
    , replicate 3 Filled
    , replicate 4 Void
    ]
  , blockTraits = Traits
    { color = Blue
    }
  }
pieceMetaFromType O = PieceMeta
  { pieceShape =
      [ replicate 2 Filled
      , replicate 2 Filled
      ]
  , blockTraits = Traits
      { color = Yellow
      }
  }
pieceMetaFromType T = PieceMeta
  { pieceShape =
      [ [Void, Filled, Void]
      , replicate 3 Filled
      , replicate 3 Void
      ]
  , blockTraits = Traits
      { color = Purple
      }
  }
pieceMetaFromType Z = PieceMeta
  { pieceShape =
      [ [Filled, Filled, Void]
      , [Void, Filled, Filled]
      , replicate 3 Void
      ]
  , blockTraits = Traits
      { color = Green
      }
  }
pieceMetaFromType S = PieceMeta
  { pieceShape = 
      [ [Void, Filled, Filled]
      , [Filled, Filled, Void]
      , replicate 3 Void
      ]
  , blockTraits = Traits
      { color = Red
      }
  }

blockFromShapeBlock :: Traits -> PieceShapeBlock -> Block
blockFromShapeBlock t Void   = empty
blockFromShapeBlock t Filled = TetraBit t