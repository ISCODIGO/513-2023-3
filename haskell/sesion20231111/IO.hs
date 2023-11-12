main :: IO ()
main = do
    putStrLn "Ingrese un número:"
    numero <- readLn --Trata de convertirlo al tipo de numero
    putStrLn "Ingrese un nombre: "
    nombre <- getLine --String
    putStrLn $ "El número ingresado es: " ++ show (numero :: Int)
    putStrLn $ "Usted se llama: " ++ nombre
{-
   Esto es un comentario de
   múltiples líneas.
-}
