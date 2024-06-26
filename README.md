#   Userspace Utility Libraries

**Status ~2024.5.23: PRed to be shipped in `%base` with the standard Urbit release.**

Design objectives:

1. Provide alternative names for common library functions in `/sys/hoon` and `/sys/zuse` which are legible to developers new to Urbit.
2. Partition `/sys`/`%base` renamings from more complex functionality, even where convenient.  I.e., these libraries should not introduce new functionality over and above what `/sys` already affords.
3. Pass inner functionality (as in `++by`) to outer cores (e.g. `+$jar`s).  This obviates needing to remember small differences in cores, and has precedence in `++in`/`++by` already (cf. some of the map and set jets).

Nothing clever or twee!  Be as clear as possible, but no clearer.


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
  - `++size`
  - `++tap`
  - `++transform-value`
  - `++transform-product`
  - `++uni`
  - `++union`
  - `++uno`
  - `++unify`
  - `++urn`
  - `++val`
  - `++values`
  - `++wyt`
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
  - `++values`
  - `++wyt`
- `/lib/maplist` for gate-based replacements for door arms in `++ja` for `+$jar`s (`map` of `list`).  This implies that all relevant `++by` arms should be directly passed through.
  - `++add`
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
  - `++val`
  - `++values`
  - `++wyt`
- `/lib/mapset` for gate-based replacements for door arms in `++ju` for `+$jug`s (`map` of `set`).  This implies that all relevant `++by` arms should be directly passed through.
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
  - `++size`
  - `++tap`
  - `++transform-value`
  - `++transform-product`
  - `++uni`
  - `++union`
  - `++uno`
  - `++unify`
  - `++urn`
  - `++val`
  - `++values`
  - `++wyt`
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

There are other convenience routines for ordered maps (`+$mop`s) and maps of maps (`+$mip`s), but these are either similar use patterns (e.g. `mop`s use arms already) or fall through to `++by` for operations already (thus `mip` could already just be used with these supplied arms).

##  Related Projects

- [`/lib/math`](https://github.com/sigilante/libmath)
- [Sequent](https://github.com/jackfoxy/sequent)
