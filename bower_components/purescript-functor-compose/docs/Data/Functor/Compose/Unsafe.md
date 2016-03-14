## Module Data.Functor.Compose.Unsafe

Unsafe instances for composed typeclasses where not all conditions for
for the instance are fulfilled by the constraints.
Includes the following instances:
- `(Extend f, Extend g, Traversable f, Applicative g) => Extend (Compose f g)`
- `(Comonad f, Comonad g, Traversable f, Applicative g) => Comonad (Compose f g)`


