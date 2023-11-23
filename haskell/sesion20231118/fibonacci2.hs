lista :: [Integer]
lista = 0 : 1 : zipWith(+) lista (tail lista)

fibonacci2 :: Int -> Integer
fibonacci2 n = lista !! n