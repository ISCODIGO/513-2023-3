-- Tipo definido por el usuario
data Empleado = Empleado String String String Double

-- Funcion para que Empleado se maneje como un String
toString :: Empleado -> String
-- Es necesario definir todo el constructor
toString(Empleado codigo nombre cargo salario) = "Empleado: " ++ nombre ++ " ("++ codigo ++ ")" ++" con el cargo de " ++ cargo ++ " que gana " ++ show salario

main :: IO()
main = do
    let emp1 = Empleado "001" "Jose A" "Gerente" 234543.34
    putStrLn $ toString emp1
