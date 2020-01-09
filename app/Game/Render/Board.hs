module Game.Render.Board
  ( evalBoard
  , renderBoard
  , updateBoard
  ) where

import Game.Draw.Board
  ( drawBoard
  )
import Entity.Grids.Types
  ( Board
  )
import Utils.State
  ( State(..)
  , get
  , put
  )
import Graphics.Gloss
  ( Picture
  )

type BoardState a = State Board a

evalBoard :: BoardState a -> Board -> a
evalBoard s = fst . runState s

renderBoard :: BoardState Picture
renderBoard = drawBoard <$> get

updateBoard :: (Board -> Board) -> BoardState Picture
updateBoard fn = tapBoard fn >> renderBoard

tapBoard :: (Board -> Board) -> BoardState ()
tapBoard fn = get >>= put . fn
