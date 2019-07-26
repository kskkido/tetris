module Game.Draw.Fields
  (
  ) where

import Game.Draw.Blocks
  ( drawBlock
  )
import Entity.Fields.Types
  ( Field
  )

-- intercept with shape constructor from gloss
drawField :: Field -> Field
drawField f = map (map $ drawBlock . snd)