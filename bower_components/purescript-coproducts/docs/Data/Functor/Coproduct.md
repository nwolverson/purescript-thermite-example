## Module Data.Functor.Coproduct

Functor coproducts

#### `Coproduct`

``` purescript
newtype Coproduct f g a
  = Coproduct (Either (f a) (g a))
```

`Coproduct f g` is the coproduct of two functors `f` and `g`

##### Instances
``` purescript
(Functor f, Functor g) => Functor (Coproduct f g)
(Foldable f, Foldable g) => Foldable (Coproduct f g)
(Traversable f, Traversable g) => Traversable (Coproduct f g)
```

#### `runCoproduct`

``` purescript
runCoproduct :: forall f g a. Coproduct f g a -> Either (f a) (g a)
```

Unwrap a coproduct

#### `left`

``` purescript
left :: forall f g a. f a -> Coproduct f g a
```

Left injection

#### `right`

``` purescript
right :: forall f g a. g a -> Coproduct f g a
```

Right injection

#### `coproduct`

``` purescript
coproduct :: forall f g a b. (f a -> b) -> (g a -> b) -> Coproduct f g a -> b
```

Eliminate a coproduct by providing eliminators for the left and
right components


