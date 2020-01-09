module Entity.Grids.Coordinates
  ( zipWithCoords
  , coordEq
  , coordOp
  ) where

import Entity.Grids.Types
  ( Grid
  , Coordinate
  )

zipWithCoords :: [[a]] -> Grid a
zipWithCoords  = zipWith zip coords
  where coords = map (zip [0..]) (map repeat [0..])

coordEq :: Coordinate -> Coordinate -> Bool
coordEq cx cy = both $ coordOp (==) cx cy
  where both cb = fst cb && snd cb

coordOp :: (Int -> Int -> a) -> Coordinate -> Coordinate -> (a,a)
coordOp fn cx cy = (x, y)
  where x = on fst fn cx cy
        y = on snd fn cx cy

on :: (a -> b) -> (b -> b -> c) -> a -> a -> c
on f g x y = f x `g` f y
