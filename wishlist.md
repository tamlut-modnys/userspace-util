```hoon
:: +gas: [(jar) (list (pair))] -> (jar)
::
:: Add each of the pairs in the list to the jar.  Append
:: to the end of a list if the key already exists.
:: Examples
:: > =j `(jar @t @ud)`(make ~[['a' ~[1 2 3]] ['b' ~[4 5 6]]])
:: > j
:: {[p='b' q={5 6 4}] [p='a' q={1 2 3}]}
:: 
:: > `(jar @t @ud)`(gas j ~[['a' 10] ['a' 42] ['b' 999] ['c' 7]])
:: {[p='b' q=~[4 5 6 999]] [p='a' q=~[1 2 3 10 42]] [p='c' q=~[7]]}
:: Source
++  gas
  |*  [a=(jar) b=(list (pair))]
  :: -^  (b `(list _?>(?=([[* ^] ^] a) [p=p.n.a q=n.q.n.a]))`b)
  |-  ^+  a
  ?~  b
    a
  =/  key  p.i.b
  =/  val  q.i.b
  $(b t.b, a (~(put by a) p.i.b (snoc `(list _?>(?=([[* ^] ^] a) ?>(?=(^ q.n.a) i.q.n.a)))`(~(gut by a) key *(list _?>(?=([[* ^] ^] a) ?>(?=(^ q.n.a) i.q.n.a)))) val)))
```
