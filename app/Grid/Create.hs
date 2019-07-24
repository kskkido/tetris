module Grid.Create
  ( createGrid
  ) where

import Grid.Types
  ( Grid
  )

createGrid :: [[a]] -> Grid a
createGrid = zipWithCoordinates 

zipWithCoordinates :: [[a]] -> Grid a
zipWithCoordinates  = zipWith zip coordinates
  where coordinates = map (`zip` [0..]) (map repeat [0..])
