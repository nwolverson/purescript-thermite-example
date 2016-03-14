## Module Data.Functor.Coproduct.Nested

#### `Coproduct2`

``` purescript
type Coproduct2 = Coproduct
```

#### `Coproduct3`

``` purescript
type Coproduct3 a b = Coproduct (Coproduct2 a b)
```

#### `Coproduct4`

``` purescript
type Coproduct4 a b c = Coproduct (Coproduct3 a b c)
```

#### `Coproduct5`

``` purescript
type Coproduct5 a b c d = Coproduct (Coproduct4 a b c d)
```

#### `Coproduct6`

``` purescript
type Coproduct6 a b c d e = Coproduct (Coproduct5 a b c d e)
```

#### `Coproduct7`

``` purescript
type Coproduct7 a b c d e f = Coproduct (Coproduct6 a b c d e f)
```

#### `Coproduct8`

``` purescript
type Coproduct8 a b c d e f g = Coproduct (Coproduct7 a b c d e f g)
```

#### `Coproduct9`

``` purescript
type Coproduct9 a b c d e f g h = Coproduct (Coproduct8 a b c d e f g h)
```

#### `Coproduct10`

``` purescript
type Coproduct10 a b c d e f g h i = Coproduct (Coproduct9 a b c d e f g h i)
```

#### `coproduct1of2`

``` purescript
coproduct1of2 :: forall a b x. a x -> Coproduct2 a b x
```

#### `coproduct2of2`

``` purescript
coproduct2of2 :: forall a b x. b x -> Coproduct2 a b x
```

#### `coproduct1of3`

``` purescript
coproduct1of3 :: forall a b c x. a x -> Coproduct3 a b c x
```

#### `coproduct2of3`

``` purescript
coproduct2of3 :: forall a b c x. b x -> Coproduct3 a b c x
```

#### `coproduct3of3`

``` purescript
coproduct3of3 :: forall a b c x. c x -> Coproduct3 a b c x
```

#### `coproduct1of4`

``` purescript
coproduct1of4 :: forall a b c d x. a x -> Coproduct4 a b c d x
```

#### `coproduct2of4`

``` purescript
coproduct2of4 :: forall a b c d x. b x -> Coproduct4 a b c d x
```

#### `coproduct3of4`

``` purescript
coproduct3of4 :: forall a b c d x. c x -> Coproduct4 a b c d x
```

#### `coproduct4of4`

``` purescript
coproduct4of4 :: forall a b c d x. d x -> Coproduct4 a b c d x
```

#### `coproduct1of5`

``` purescript
coproduct1of5 :: forall a b c d e x. a x -> Coproduct5 a b c d e x
```

#### `coproduct2of5`

``` purescript
coproduct2of5 :: forall a b c d e x. b x -> Coproduct5 a b c d e x
```

#### `coproduct3of5`

``` purescript
coproduct3of5 :: forall a b c d e x. c x -> Coproduct5 a b c d e x
```

#### `coproduct4of5`

``` purescript
coproduct4of5 :: forall a b c d e x. d x -> Coproduct5 a b c d e x
```

#### `coproduct5of5`

``` purescript
coproduct5of5 :: forall a b c d e x. e x -> Coproduct5 a b c d e x
```

#### `coproduct1of6`

``` purescript
coproduct1of6 :: forall a b c d e f x. a x -> Coproduct6 a b c d e f x
```

#### `coproduct2of6`

``` purescript
coproduct2of6 :: forall a b c d e f x. b x -> Coproduct6 a b c d e f x
```

#### `coproduct3of6`

``` purescript
coproduct3of6 :: forall a b c d e f x. c x -> Coproduct6 a b c d e f x
```

#### `coproduct4of6`

``` purescript
coproduct4of6 :: forall a b c d e f x. d x -> Coproduct6 a b c d e f x
```

#### `coproduct5of6`

``` purescript
coproduct5of6 :: forall a b c d e f x. e x -> Coproduct6 a b c d e f x
```

#### `coproduct6of6`

``` purescript
coproduct6of6 :: forall a b c d e f x. f x -> Coproduct6 a b c d e f x
```

#### `coproduct1of7`

``` purescript
coproduct1of7 :: forall a b c d e f g x. a x -> Coproduct7 a b c d e f g x
```

#### `coproduct2of7`

``` purescript
coproduct2of7 :: forall a b c d e f g x. b x -> Coproduct7 a b c d e f g x
```

#### `coproduct3of7`

``` purescript
coproduct3of7 :: forall a b c d e f g x. c x -> Coproduct7 a b c d e f g x
```

#### `coproduct4of7`

``` purescript
coproduct4of7 :: forall a b c d e f g x. d x -> Coproduct7 a b c d e f g x
```

#### `coproduct5of7`

``` purescript
coproduct5of7 :: forall a b c d e f g x. e x -> Coproduct7 a b c d e f g x
```

#### `coproduct6of7`

``` purescript
coproduct6of7 :: forall a b c d e f g x. f x -> Coproduct7 a b c d e f g x
```

#### `coproduct7of7`

``` purescript
coproduct7of7 :: forall a b c d e f g x. g x -> Coproduct7 a b c d e f g x
```

#### `coproduct1of8`

``` purescript
coproduct1of8 :: forall a b c d e f g h x. a x -> Coproduct8 a b c d e f g h x
```

#### `coproduct2of8`

``` purescript
coproduct2of8 :: forall a b c d e f g h x. b x -> Coproduct8 a b c d e f g h x
```

#### `coproduct3of8`

``` purescript
coproduct3of8 :: forall a b c d e f g h x. c x -> Coproduct8 a b c d e f g h x
```

#### `coproduct4of8`

``` purescript
coproduct4of8 :: forall a b c d e f g h x. d x -> Coproduct8 a b c d e f g h x
```

#### `coproduct5of8`

``` purescript
coproduct5of8 :: forall a b c d e f g h x. e x -> Coproduct8 a b c d e f g h x
```

#### `coproduct6of8`

``` purescript
coproduct6of8 :: forall a b c d e f g h x. f x -> Coproduct8 a b c d e f g h x
```

#### `coproduct7of8`

``` purescript
coproduct7of8 :: forall a b c d e f g h x. g x -> Coproduct8 a b c d e f g h x
```

#### `coproduct8of8`

``` purescript
coproduct8of8 :: forall a b c d e f g h x. h x -> Coproduct8 a b c d e f g h x
```

#### `coproduct1of9`

``` purescript
coproduct1of9 :: forall a b c d e f g h i x. a x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct2of9`

``` purescript
coproduct2of9 :: forall a b c d e f g h i x. b x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct3of9`

``` purescript
coproduct3of9 :: forall a b c d e f g h i x. c x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct4of9`

``` purescript
coproduct4of9 :: forall a b c d e f g h i x. d x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct5of9`

``` purescript
coproduct5of9 :: forall a b c d e f g h i x. e x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct6of9`

``` purescript
coproduct6of9 :: forall a b c d e f g h i x. f x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct7of9`

``` purescript
coproduct7of9 :: forall a b c d e f g h i x. g x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct8of9`

``` purescript
coproduct8of9 :: forall a b c d e f g h i x. h x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct9of9`

``` purescript
coproduct9of9 :: forall a b c d e f g h i x. i x -> Coproduct9 a b c d e f g h i x
```

#### `coproduct1of10`

``` purescript
coproduct1of10 :: forall a b c d e f g h i j x. a x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct2of10`

``` purescript
coproduct2of10 :: forall a b c d e f g h i j x. b x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct3of10`

``` purescript
coproduct3of10 :: forall a b c d e f g h i j x. c x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct4of10`

``` purescript
coproduct4of10 :: forall a b c d e f g h i j x. d x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct5of10`

``` purescript
coproduct5of10 :: forall a b c d e f g h i j x. e x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct6of10`

``` purescript
coproduct6of10 :: forall a b c d e f g h i j x. f x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct7of10`

``` purescript
coproduct7of10 :: forall a b c d e f g h i j x. g x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct8of10`

``` purescript
coproduct8of10 :: forall a b c d e f g h i j x. h x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct9of10`

``` purescript
coproduct9of10 :: forall a b c d e f g h i j x. i x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct10of10`

``` purescript
coproduct10of10 :: forall a b c d e f g h i j x. j x -> Coproduct10 a b c d e f g h i j x
```

#### `coproduct2`

``` purescript
coproduct2 :: forall a b z x. (a x -> z) -> (b x -> z) -> Coproduct2 a b x -> z
```

#### `coproduct3`

``` purescript
coproduct3 :: forall a b c z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> Coproduct3 a b c x -> z
```

#### `coproduct4`

``` purescript
coproduct4 :: forall a b c d z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> Coproduct4 a b c d x -> z
```

#### `coproduct5`

``` purescript
coproduct5 :: forall a b c d e z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> (e x -> z) -> Coproduct5 a b c d e x -> z
```

#### `coproduct6`

``` purescript
coproduct6 :: forall a b c d e f z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> (e x -> z) -> (f x -> z) -> Coproduct6 a b c d e f x -> z
```

#### `coproduct7`

``` purescript
coproduct7 :: forall a b c d e f g z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> (e x -> z) -> (f x -> z) -> (g x -> z) -> Coproduct7 a b c d e f g x -> z
```

#### `coproduct8`

``` purescript
coproduct8 :: forall a b c d e f g h z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> (e x -> z) -> (f x -> z) -> (g x -> z) -> (h x -> z) -> Coproduct8 a b c d e f g h x -> z
```

#### `coproduct9`

``` purescript
coproduct9 :: forall a b c d e f g h i z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> (e x -> z) -> (f x -> z) -> (g x -> z) -> (h x -> z) -> (i x -> z) -> Coproduct9 a b c d e f g h i x -> z
```

#### `coproduct10`

``` purescript
coproduct10 :: forall a b c d e f g h i j z x. (a x -> z) -> (b x -> z) -> (c x -> z) -> (d x -> z) -> (e x -> z) -> (f x -> z) -> (g x -> z) -> (h x -> z) -> (i x -> z) -> (j x -> z) -> Coproduct10 a b c d e f g h i j x -> z
```


