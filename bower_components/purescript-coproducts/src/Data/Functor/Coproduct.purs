-- | Functor coproducts

module Data.Functor.Coproduct where

import Prelude

import Data.Either
import Data.Foldable
import Data.Traversable

-- | `Coproduct f g` is the coproduct of two functors `f` and `g`
newtype Coproduct f g a = Coproduct (Either (f a) (g a))

-- | Unwrap a coproduct
runCoproduct :: forall f g a. Coproduct f g a -> Either (f a) (g a)
runCoproduct (Coproduct x) = x

-- | Left injection
left :: forall f g a. f a -> Coproduct f g a
left = Coproduct <<< Left

-- | Right injection
right :: forall f g a. g a -> Coproduct f g a
right = Coproduct <<< Right

-- | Eliminate a coproduct by providing eliminators for the left and
-- | right components
coproduct :: forall f g a b. (f a -> b) -> (g a -> b) -> Coproduct f g a -> b
coproduct f g = either f g <<< runCoproduct

instance functorCoproduct :: (Functor f, Functor g) => Functor (Coproduct f g) where
  map f = Coproduct <<< coproduct (Left <<< (<$>) f) (Right <<< (<$>) f)

instance foldableCoproduct :: (Foldable f, Foldable g) => Foldable (Coproduct f g) where
  foldr f z = coproduct (foldr f z) (foldr f z)
  foldl f z = coproduct (foldl f z) (foldl f z)
  foldMap f = coproduct (foldMap f) (foldMap f)

instance traversableCoproduct :: (Traversable f, Traversable g) => Traversable (Coproduct f g) where
  traverse f = coproduct
    ((<$>) (Coproduct <<< Left) <<< traverse f)
    ((<$>) (Coproduct <<< Right) <<< traverse f)
  sequence = coproduct
    ((<$>) (Coproduct <<< Left) <<< sequence)
    ((<$>) (Coproduct <<< Right) <<< sequence)
