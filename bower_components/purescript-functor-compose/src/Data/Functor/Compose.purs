-- | Based on the [Haskell module](http://hackage.haskell.org/package/transformers-0.4.3.0/docs/Data-Functor-Compose.html)
module Data.Functor.Compose (Compose(Compose), decompose) where

import Prelude

import Control.Alt         (Alt, alt)
import Control.Plus        (Plus, empty)
import Control.Alternative (Alternative)
import Data.Foldable       (Foldable, foldl, foldMap, foldr)
import Data.Traversable    (Traversable, traverse)

data Compose f g a = Compose (f (g a))

decompose :: forall f g a. (Compose f g) a -> f (g a)
decompose (Compose x) = x

instance showCompose :: (Show (f (g a))) => Show (Compose f g a) where
    show = show <<< decompose

instance eqCompose :: (Eq (f (g a))) => Eq (Compose f g a) where
    eq (Compose a) (Compose b) = a == b

instance ordCompose :: (Ord (f (g a))) => Ord (Compose f g a) where
    compare (Compose a) (Compose b) = compare a b

instance functorCompose :: (Functor f, Functor g)
                        => Functor (Compose f g) where
    -- map :: forall a b. (a -> b) -> (Compose f g) a -> (Compose f g) b
    map f = Compose <<< map (map f) <<< decompose

instance applyCompose :: (Apply f, Apply g) => Apply (Compose f g) where
    apply (Compose f) (Compose x) = Compose $ apply <$> f <*> x

instance applicativeCompose :: (Applicative f, Applicative g)
                            => Applicative (Compose f g) where
    pure = Compose <<< pure <<< pure

instance foldableCompose :: (Foldable f, Foldable g)
                         => Foldable (Compose f g) where
    foldr f i = foldr   (flip (foldr f)) i <<< decompose
    foldl f i = foldl   (foldl f)        i <<< decompose
    foldMap f = foldMap (foldMap f)        <<< decompose

instance traversableCompose :: (Traversable f, Traversable g)
                            => Traversable (Compose f g) where
    traverse f = map Compose <<< traverse (traverse f) <<< decompose
    sequence   = traverse id

-- Takes on the Alt instance of the outer Functor
instance altCompose :: (Alt f, Functor g) => Alt (Compose f g) where
    alt (Compose a) (Compose b) = Compose $ alt a b

instance plusCompose :: (Plus f, Functor g) => Plus (Compose f g) where
    empty = Compose empty

instance alternativeCompose :: (Alternative f, Applicative g)
                            => Alternative (Compose f g)

{-
-------------------------------------------------------------------------------
-- UNSAFE ---------------------------------------------------------------------
-------------------------------------------------------------------------------
-- | See http://stackoverflow.com/questions/12963733/writing-cojoin-or-cobind-for-n-dimensional-grid-type
-- | for a discussion of the instance.
-- | To hold for all comonad laws, the structure of g must be regular, so that no values are dropped.
instance unsafeExtendCompose :: ( Extend f
                                , Extend g
                                , Traversable f
                                , Applicative g
                                ) => Extend (Compose f g) where
    extend f = Compose
           <<< extend (map (f <<< Compose) <<< traverse duplicate)
           <<< decompose

-- | While the extract implementation is safe, the instance still requires the unsafe Extend instance.
instance unsafeComonadCompose :: ( Comonad f
                                 , Comonad g
                                 , Traversable f
                                 , Applicative g
                                 ) => Comonad (Compose f g) where
    extract = extract <<< extract <<< decompose
-}
