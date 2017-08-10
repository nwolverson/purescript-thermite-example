module Main where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML (window) as DOM
import DOM.HTML.Types (htmlDocumentToParentNode) as DOM
import DOM.HTML.Window (document) as DOM
import DOM.Node.ParentNode (querySelector, QuerySelector(..)) as DOM
import Data.Maybe (Maybe, fromJust)
import Partial.Unsafe (unsafePartial)
import React (ReactComponent)
import React (createFactory) as R
import React.DOM (text, button, p') as R
import React.DOM.Props as RP
import ReactDOM as RDOM
import Thermite as T

data Action = Increment | Decrement

type State = { counter :: Int }

initialState :: State
initialState = { counter: 0 }

render :: forall a. T.Render State a Action
render dispatch _ state _ =
  [ R.p' [ R.text "Value: "
         , R.text $ show state.counter
         ]
  , R.p' [ R.button [ RP.onClick \_ -> dispatch Increment ]
                    [ R.text "Increment" ]
         , R.button [ RP.onClick \_ -> dispatch Decrement ]
                    [ R.text "Decrement" ]
         ]
  ]

performAction :: forall a b. T.PerformAction a State b Action
performAction Increment _ _ = void $ T.cotransform $ \state -> state { counter = state.counter + 1 }
performAction Decrement _ _ = void $ T.cotransform $ \state -> state { counter = state.counter - 1 }

spec :: forall a b. T.Spec a State b Action
spec = T.simpleSpec performAction render

main :: forall eff. Eff (dom :: DOM | eff) (Maybe ReactComponent)
main = unsafePartial do
  let component = T.createClass spec initialState
  document <- DOM.window >>= DOM.document
  container <- fromJust <$> DOM.querySelector (DOM.QuerySelector "#container") (DOM.htmlDocumentToParentNode document)
  RDOM.render (R.createFactory component {}) container
