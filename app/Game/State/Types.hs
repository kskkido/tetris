module Game.State
  (
  ) where

import Entity.Grids.Types
  ( Coordinate
  , PieceType
  )
import Game.Render.Board
  ( BoardState
  )

data GameState =
  { moving :: PieceMoving
  , bag :: PieceBag
  , board :: BoardState
  }

-- { moving: { position: (); pieceType: PieceType } }


data PieceMoving = PieceMoving
  { position :: Coordinate -- top left corner of piece shape
  , pieceType :: PieceType
  }

data PieceBag = PieceBag
  { held :: PieceType
  , queue :: [PieceType]
  }
