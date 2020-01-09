module Game.Draw.Color
  ( drawColor
  ) where

import qualified Theme.Types as T
  ( Color(..)
  )
import qualified Graphics.Gloss as G
  ( Color
  , red
  , blue
  , green
  , yellow
  , orange
  , violet
  , cyan
  , white
  , black
  )

drawColor :: T.Color -> G.Color
drawColor T.Red    = G.red
drawColor T.Blue   = G.blue
drawColor T.Green  = G.green
drawColor T.Yellow = G.yellow
drawColor T.Orange = G.orange
drawColor T.Purple = G.violet
drawColor T.Cyan   = G.cyan
drawColor T.White  = G.white
drawColor T.Black  = G.black

-- drawColor :: T.Color -> G.Color
-- drawColor T.Red    = G.makeColor8 230 103 103 1.0
-- drawColor T.Blue   = G.makeColor8 61 193 211 1.0
-- drawColor T.Green  = G.makeColor8 11 232 129 1.0
-- drawColor T.Yellow = G.makeColor8 245 205 121 1.0
-- drawColor T.Orange = G.makeColor8 241 144 102 1.0
-- drawColor T.Purple = G.makeColor8 120 111 166 1.0
-- drawColor T.Cyan   = G.makeColor8 99 205 218 1.0
-- drawColor T.White  = G.makeColor8 236 240 241 1.0
-- drawColor T.Black  = G.makeColor8 89 98 117 1.0