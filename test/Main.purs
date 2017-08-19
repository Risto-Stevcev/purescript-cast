module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Test.Spec.Runner (RunnerEffects)
import Test.Data.Cast (main) as Test

main ∷ Eff (RunnerEffects ()) Unit
main = Test.main
