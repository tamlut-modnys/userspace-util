  ::  /lib/maplist
::::  Utilities to replicate ++ja behavior via gates.
::
::  A jar is a (map (list)).  Because it is a map, the
::  ++by functions can also be utilized with it directly.
::
|@
:: +add: [(jar) noun noun] -> (jar)
::
:: Adds a value to the head of the list at key in jar.
:: Examples
:: > =j `(jar @t @ud)`(make ~[['a' ~[1 2 3]] ['b' ~[4 5 6]]])
:: > j
:: {[p='b' q=~[4 5 6]] [p='a' q=~[1 2 3]]}
:: 
:: > `(jar @t @ud)`(add j 'b' 7)
:: {[p='b' q=~[7 4 5 6]] [p='a' q=~[1 2 3]]}
:: 
:: > `(jar @t @ud)`(add j 'c' 8)
:: {[p='b' q=~[4 5 6]] [p='a' q=~[1 2 3]] [p='c' q=~[8]]}
:: Source
++  add
  |*  [j=(jar) k=* v=*]
  (~(add ja j) k v)
:: +del: [(jar) noun] -> (jar)
::
:: Deletes the key from jar.
:: Examples
:: > =j `(jar @t @ud)`(make ~[['a' ~[1 2 3]] ['b' ~[4 5 6]]])
:: > j
:: {[p='b' q=~[4 5 6]] [p='a' q=~[1 2 3]]}
::
:: > `(jar @t @ud)`(del j 'a')
:: {[p='b' q=~[4 5 6]]}
:: Source
++  del
  |*  [j=(jar) k=*]
  (~(del by j) k)
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
:: +get: [(jar) noun] -> (unit noun)
::
:: Returns the unit value at key in jar.
:: Examples
:: > =j `(jar @t @ud)`(make ~[['a' ~[1 2 3]] ['b' ~[4 5 6]]])
:: > j
:: {[p='b' q=~[4 5 6]] [p='a' q=~[1 2 3]]}
:: 
:: > `(list @ud)`(get j 'a')
:: ~[1 2 3]
:: 
:: > `(list @ud)`(get j 'b')
:: ~[4 5 6]
:: 
:: > `(list @ud)`(get j 'c')
:: ~
:: Source
++  get
  |*  [j=(jar) k=*]
  (~(get ja j) k)
:: +has: [(jar) noun] -> ?
::
:: Check whether the key is in the jar.
:: Examples
:: > =j `(jar @t @ud)`(make ~[['a' ~[1 2 3]] ['b' ~[4 5 6]]])
:: > j
:: {[p='b' q=~[4 5 6]] [p='a' q=~[1 2 3]]}
::
:: > (has j 'a')
:: %.y
:: Source
++  has
  |*  [j=(jar) k=*]
  (~(has by j) k)
:: +make:  (list (pair * (list))) -> (jar)
::
:: Creates a jar from a list of pairs of key and list.
:: Examples
:: > `(jar @t @ud)`(make ~[['a' ~[1 2 3]] ['b' ~[4 5 6]]])
:: {[p='b' q=~[4 5 6]] [p='a' q=~[1 2 3]]}
:: Source
++  make
  |*  [l=(list (pair * (list)))]
  (malt l)
--
