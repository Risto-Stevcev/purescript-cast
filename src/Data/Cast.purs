module Data.Cast where

import Prelude
import Data.Int (toNumber, round)

class Cast from to where
  cast ∷ from → to

instance castShow ∷ Show a ⇒ Cast a String where
  cast = show

instance castIntNumber ∷ Cast Int Number where
  cast = toNumber

instance castNumberInt ∷ Cast Number Int where
  cast = round
