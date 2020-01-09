module Game.Constants
  ( gameTitle
  , windowWidth
  , windowHeight
  , windowOffsetX
  , windowOffsetY
  , blockWidth
  , blockHeight
  ) where

gameTitle :: String
gameTitle = "hetris"

windowWidth :: Int
windowWidth = 500

windowHeight :: Int
windowHeight = 700

windowOffsetX :: Int
windowOffsetX = 100

windowOffsetY :: Int
windowOffsetY = 100

blockWidth :: Float
blockWidth = 20

blockHeight :: Float
blockHeight = 20

gravity :: Int
gravity = 10