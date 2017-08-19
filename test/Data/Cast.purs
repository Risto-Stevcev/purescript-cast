module Test.Data.Cast where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Cast (cast)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (RunnerEffects, run)

main ∷ Eff (RunnerEffects ()) Unit
main = run [consoleReporter] do
  describe "Cast" do
    describe "castIntNumber" do
      it "should cast" do
        cast (-5) `shouldEqual` "-5"
        cast 3 `shouldEqual` "3"
    describe "castNumberInt" do
      it "should cast" do
        cast 5.4 `shouldEqual` 5
        cast 5.6 `shouldEqual` 6
