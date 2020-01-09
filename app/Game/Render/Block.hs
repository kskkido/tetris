module Game.Render.Block
  ( renderBlock
  , deleteBlock
  , moveBlock
  ) where

import Entity.Blocks.Empty
  ( empty
  )
import Entity.Blocks.Types
  ( Block
  )
import Entity.Grids.Coordinates
  ( coordOp
  , coordEq
  )
import Entity.Grids.Types
  ( Board
  , BoardCell
  , Coordinate
  )
import Data.List
  ( find
  )
import Data.Maybe
  ( isJust
  )

renderBlock :: Block -> Coordinate -> Board -> Board
renderBlock = putBlock

deleteBlock :: BoardCell -> BoardCell
deleteBlock (cx,_) = (cx, empty)

moveBlock :: Coordinate -> BoardCell -> BoardCell
moveBlock cx (cy,b) = (coordOp (+) cx cy,b)

getBlock :: Coordinate -> Board -> Maybe Block
getBlock _  []     = Nothing
getBlock cx (l:ls) | isJust block = snd <$> block
                   | otherwise    = getBlock cx ls
  where block = find (coordEq cx . fst) l

putBlock :: Block -> Coordinate -> Board -> Board
putBlock bx cx = map (map put)
  where put (cy,by) | coordEq cx cy = (cy,bx)
                    | otherwise     = (cy,by)