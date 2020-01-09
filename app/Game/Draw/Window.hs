module Game.Draw.Window
  ( drawWindow
  ) where

import Game.Constants
  ( gameTitle
  , windowWidth
  , windowHeight
  , windowOffsetX
  , windowOffsetY
  )
import Graphics.Gloss
  ( Display(..)
  )

drawWindow :: Display
drawWindow = InWindow gameTitle d o
  where d = (windowWidth, windowHeight)
        o = (windowOffsetX, windowOffsetY)
