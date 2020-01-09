module Entity.Grids.Types
  ( Grid
  , GridLine
  , GridCell
  , Coordinate
  , Board
  , BoardCell
  , Piece
  , PieceMeta(..)
  , PieceType(..)
  , PieceShape
  , PieceShapeBlock(..)
  ) where

import Entity.Blocks.Types
  ( Block
  , Traits(..)
  )

type Grid a = [GridLine a]
type GridLine a = [GridCell a]
type GridCell a = (Coordinate, a) 
type Coordinate = (Int,Int)

type Board = Grid Block
type BoardCell = GridCell Block

type Piece = Grid Block

data PieceMeta = PieceMeta
  { pieceShape :: PieceShape
  , blockTraits :: Traits
  } deriving (Show, Read, Eq)

data PieceType = I
               | L
               | J
               | S
               | Z
               | O
               | T
               deriving (Show, Read, Eq, Enum)

type PieceShape = [[PieceShapeBlock]]
data PieceShapeBlock = Void
                     | Filled
                     deriving (Show, Read, Eq)
