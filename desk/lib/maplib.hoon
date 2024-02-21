::  map utilities
::
|%
:: +all: [(map) gate] -> ?
::
:: Computes the logical AND on the results of slamming every element in map a with gate b.
:: Examples
:: > =a (malt `(list [@tas *])`~[a+1 b+[2 3]])
:: > (~(all by a) |=(a=* ?@(a & |)))
:: %.n
:: Source
++  all
  |*  [m=(map) g=$-(* ?)]
  ^-  ?
  (~(all by m) g)

:: +put: [(map) noun noun] -> (map)
::
:: Returns a new map that contains the new value at key
:: Examples
:: > =/  mymap  (malt `(list (pair @ud @ud))`~[[%1 1] [%2 2]])
::   (put mymap %3 3)
:: [n=[p=p=2 q=q=2] l=[n=[p=p=1 q=q=1] l=~ r=~] r=[n=[p=p=3 q=q=3] l=~ r=~]]
:: Source
++  put
  |*  [m=(map) k=* v=*]
  ^+  m
  (~(put by m) k v)
:: +get: [(map) noun] -> noun
::
:: Returns the value at key in map
:: Examples
:: > =/  mymap  (malt `(list (pair @ud @ud))`~[[%1 1] [%2 2]])
::   (get mymap %2)
:: [~ q=2]
:: Source
++  get
  |*  [m=(map) k=*]
  (~(get by m) k)
:: +del: [(map) noun] -> (map)
::
:: Returns a new map that does not contain the key
:: Examples
:: > =/  mymap  (malt `(list (pair @ud @ud))`~[[%1 1] [%2 2]])
::   (del mymap %2)
:: [n=[p=p=1 q=q=1] l=~ r=~]
:: Source
++  del
  |*  [m=(map) k=*]
  ^+  m
  (~(del by m) k)

    :: ++all:by
    :: ++any:by
    :: ++apt:by
    :: ++bif:by
    :: ++del:by
    :: ++dif:by
    :: ++dig:by
    :: ++gas:by
    :: ++get:by
    :: ++got:by
    :: ++gut:by
    :: ++has:by
    :: ++int:by
    :: ++jab:by
    :: ++key:by
    :: ++mar:by
    :: ++put:by
    :: ++rep:by
    :: ++rib:by
    :: ++run:by
    :: ++rut:by
    :: ++tap:by
    :: ++uni:by
    :: ++uno:by
    :: ++urn:by
    :: ++wyt:by
    :: ++val:by
--
