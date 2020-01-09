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

-- 1. ProductName needs eq, ord, generic, show

newtype ProductName = ProductName String

-- 2. Price needs eq, ord, generic, show, semigroup, monoid, semiring, ring, CommutativeRing, EuclideanRing, DivisionRing, Field
newtype Price = Price Int

data LineItem 
  = LineItem 
  { name :: ProductName
  , qty  :: Int
  , price :: Price
  }

-- 3. give LineItem a smart Constructor

-- 4. needs Functor, applicative, monad, foldable, traversable
data Box a = Box a


-- 5. make Transaction less repetitive

transaction 
  = [ LineItem { name: ProductName "shoe", qty:1, price: Price 100 }
    , LineItem { name: ProductName "lace", qty:1, price: Price 20 }
    , LineItem { name: ProductName "sock", qty:1, price: Price 40 }
    ]


-- 6. implement a way to get a total price out of an Array of lineItems


main :: Effect Unit
main = pure unit 
