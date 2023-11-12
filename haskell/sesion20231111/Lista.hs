main :: IO()
main = do
    let lista = [10, 20, 30] :: [Int]
    -- Un String se puede declarar como una lista de
    let caracteres = "Hola mundo" :: [Char]
    print lista
    print caracteres
    let primerItem = lista !! 0
    print $ "Acceder al primer item: " ++ show primerItem
