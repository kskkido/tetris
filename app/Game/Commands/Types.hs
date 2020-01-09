module Game.Commands.Types
  ( PieceCommand(..)
  ) where

data PieceCommand = MoveL
                  | MoveR
                  | MoveD
                  | Rotate