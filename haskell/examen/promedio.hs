-- opcion 1
promedio_1 :: [Int] -> Double
promedio_1 lista = fromIntegral (sum lista) / fromIntegral (length lista)

-- opcion 2
promedio_2 :: Fractional a => [a] -> a
promedio_2 lista = sum lista / fromIntegral (length lista)

-- opcion valida para el examen escrito (no es valido en codigo)
promedio :: [Int] -> Int
promedio lista = sum lista / length lista