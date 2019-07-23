module Entity.Grid.Coordinates
  ( zipWithCoordinates
  ) where

import Entity.Grid.Types
  ( Coordinate
  )

zipWithCoordinates :: [[a]] -> [[(Coordinate, a)]]
zipWithCoordinates  = zipWith zip coordinates
  where coordinates = map (`zip` [0..]) (map repeat [0..])