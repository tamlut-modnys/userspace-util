::  map utilities
::
|%
:: +put: [(map) noun noun] -> (map)
::
:: Returns a new map that contains the new value at key
:: Examples
:: >  =/  mymap  (malt ~[[%1 1] [%2 2]])
:: (put mymap %1 'one')
:: > (append (limo [1 2 ~]) (limo [3 4 ~]))
:: ~[1 2 3 4]
:: Source
++ append weld
++  put
  |*  [m=(map) k=* v=*]
  ^+  m
  (~(put by m) k v)
++  get
  |*  [m=(map)]

--