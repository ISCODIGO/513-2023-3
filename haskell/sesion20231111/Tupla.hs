main :: IO()
main = do
    let tupla = (2, "hola")
    let primerItem = fst tupla
    let segundoItem = snd tupla
    putStrLn $ "Primer elemento: " ++ show primerItem
    putStrLn $ "Segundo elemento: " ++ segundoItem
