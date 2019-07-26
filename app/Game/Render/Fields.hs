module Game.Render.Fields
  (
  ) where

import Game.Render.Types
  ( RenderedField
  )
import Game.Draw.Fields
  ( drawField
  )
import Entity.Fields.Types
  ( Field
  )
import Utils.State
  ( State
  , get
  , put
  )

type RenderFieldState = State Field RenderedField

renderField :: RenderFieldState
renderField = get >>= render
  where render (x,s) = put s >> return (drawField x)

updateField :: (Field -> Field) -> RenderFieldState
updateField fn = get >>= update
  where update (x,s) = put (fn s) >> return x