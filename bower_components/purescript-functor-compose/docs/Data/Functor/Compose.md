## Module Data.Functor.Compose

Based on the [Haskell module](http://hackage.haskell.org/package/transformers-0.4.3.0/docs/Data-Functor-Compose.html)

#### `Compose`

``` purescript
data Compose f g a
  = Compose (f (g a))
```

##### Instances
``` purescript
instance showCompose :: (Show (f (g a))) => Show (Compose f g a)
instance eqCompose :: (Eq (f (g a))) => Eq (Compose f g a)
instance ordCompose :: (Ord (f (g a))) => Ord (Compose f g a)
instance functorCompose :: (Functor f, Functor g) => Functor (Compose f g)
instance applyCompose :: (Apply f, Apply g) => Apply (Compose f g)
instance applicativeCompose :: (Applicative f, Applicative g) => Applicative (Compose f g)
instance foldableCompose :: (Foldable f, Foldable g) => Foldable (Compose f g)
instance traversableCompose :: (Traversable f, Traversable g) => Traversable (Compose f g)
instance altCompose :: (Alt f, Functor g) => Alt (Compose f g)
instance plusCompose :: (Plus f, Functor g) => Plus (Compose f g)
instance alternativeCompose :: (Alternative f, Applicative g) => Alternative (Compose f g)
```

#### `decompose`

``` purescript
decompose :: forall f g a. Compose f g a -> f (g a)
```


