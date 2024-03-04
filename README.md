#   Userspace Utility Libraries

Design objectives:

1. Provide alternative names for common library functions in `/sys/hoon` and `/sys/zuse` which are legible to developers new to Urbit.
2. Partition `/sys`/`%base` renamings from more complex functionality, even where convenient.  I.e., these libraries should not introduce new functionality over and above what `/sys` already affords.

Nothing clever or twee!

##  Components

- `/lib/map` for gate-based replacements for door arms in `++by`.
- `/lib/set` for gate-based replacements for door arms in `++in`.
- `/lib/mop` for gate-based replacements for door arms for `+$mop`s.
- `/lib/mip` for gate-based replacements for door arms for `+$mip`s.
- `/lib/list` for list functions (e.g. `++append` for `++weld`).

##  Related Projects

- [`/lib/math`](https://github.com/sigilante/libmath)
- [Sequent](https://github.com/jackfoxy/sequent)
