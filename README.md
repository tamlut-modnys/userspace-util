#   Userspace Utility Libraries

Design objectives:

1. Provide alternative names for common library functions in `/sys/hoon` and `/sys/zuse` which are legible to developers new to Urbit.
2. Partition `/sys`/`%base` renamings from more complex functionality, even where convenient.  I.e., these libraries should not introduce new functionality over and above what `/sys` already affords.

Nothing clever or twee!

##  Components

- `/lib/map` for gate-based replacements for door arms in `++by`.
  - `++all`
  - `++and`
  - `++any`
  - `++apply`
  - `++apt`
  - `++bif`
  - `++del`
  - `++dif`
  - `++diff-left`
  - `++diff-right`
  - `++diff-symmetric`
  - `++dig`
  - `++filter`
  - `++gas`
  - `++get`
  - `++got`
  - `++gut`
  - `++has`
  - `++int`
  - `++intersect`
  - `++jab`
  - `++key`
  - `++keys`
  - `++mar`
  - `++make`
  - `++or`
  - `++pairs`
  - `++put`
  - `++reduce`
  - `++rep`
  - `++rib`
  - `++run`
  - `++rut`
  - `++size`
  - `++tap`
  - `++transform-key-value`
  - `++transform-value`
  - `++transform-product`
  - `++uni`
  - `++union`
  - `++uno`
  - `++unify`
  - `++urn`
  - `++wyt`
  - `++val`
  - `++values`
- `/lib/set` for gate-based replacements for door arms in `++in`.
  - `++all`
  - `++and`
  - `++any`
  - `++apply`
  - `++apt`
  - `++bif`
  - `++del`
  - `++dif`
  - `++diff-left`
  - `++diff-right`
  - `++diff-symmetric`
  - `++dig`
  - `++filter`
  - `++gas`
  - `++has`
  - `++int`
  - `++intersect`
  - `++make`
  - `++or`
  - `++put`
  - `++reduce`
  - `++rep`
  - `++run`
  - `++size`
  - `++tap`
  - `++uni`
  - `++union`
  - `++wyt`
  - `++values`
- `/lib/maplist` for gate-based replacements for door arms in `++ja` for `+$jar`s (`map` of `list`).
  - `++add`
  - `++del`
  - `++gas`
  - `++get`
  - `++has`
  - `++make`
- `/lib/mapset` for gate-based replacements for door arms in `++ju` for `+$jug`s (`map` of `set`).
  - `++del`
  - `++gas`
  - `++get`
  - `++has`
  - `++make`
  - `++put`
- `/lib/mip` for gate-based replacements for door arms for `+$mip`s (`map` of `map`).
- `/lib/mop` for gate-based replacements for door arms for `+$mop`s.
- `/lib/list` for list functions (e.g. `++append` for `++weld`).  Unlike the others, this is merely a renaming of existing arms.
  - `after` ← `slag`
  - `and-each` ← `levy`
  - `any-each` ← `lien`
  - `append` ← `snoc`
  - `apply` ← `turn`
  - `before` ← `scag`
  - `concat` ← `weld`
  - `except` ← `skip`
  - `filter` ← `skim`
  - `find-all` ← `fand`
  - `flatten` ← `zing`
  - `fold-l` ← `roll`
  - `fold-r` ← `reel`
  - `insert` ← `into`
  - `item` ← `snag`
  - `length` ← `lent`
  - `maybe` ← `murn`
  - `range` ← `gulf`
  - `remove` ← `oust`
  - `repeat` ← `reap`
  - `reverse` ← `flop`
  - `split-at` ← `skid`
  - `substring` ← `swag`
  - `swap` ← `snap`

##  Related Projects

- [`/lib/math`](https://github.com/sigilante/libmath)
- [Sequent](https://github.com/jackfoxy/sequent)
