{-
Para utilizar este libreria se utilizo el siguiente comando:
cabal install --lib tuple
-}

import Data.Tuple.Select

main :: IO ()
main = do
    let myTuple = (1, "Hello", 3.14)
    print $ sel1 myTuple