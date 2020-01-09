module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.Foldable (class Foldable)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show(genericShow)
import Data.Newtype (class Newtype, unwrap)
import Data.Traversable (class Traversable)
import Data.Tuple (Tuple(..))

-- needs eq, ord, generic, show

newtype ProductName = ProductName String

-- needs eq, ord, generic, show, semigroup, monoid, semiring, ring, CommutativeRing, EuclideanRing, DivisionRing, Field
newtype Price = Price Int

data LineItem 
  = LineItem 
  { name :: ProductName
  , qty  :: Int
  , price :: Int
  }

-- needs Functor, applicative, monad, foldable, traversable
data Box a = Box a




main :: Effect Unit
main = pure unit 
