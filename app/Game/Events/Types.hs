module Game.Events.Types
  ( MetaEvent(..)
  , PieceEvent(..)
  , LineEvent(..)
  ) where

data MetaEvent = GameStart
               | GamePause
               | GameOver
               | StageAdvance
               | ScoreUpdate
               deriving (Show, Read, Eq)

data PieceEvent = PieceMove
                | PieceStop
                | PieceSpawn
                deriving (Show, Read, Eq)

data LineEvent = LineClear
               deriving (Show, Read,Eq)
