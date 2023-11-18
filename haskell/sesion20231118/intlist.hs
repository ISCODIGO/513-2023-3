-- Define a custom list type for integers.
data IntList = EmptyList | Cons Int IntList deriving Show

-- Function to sum all the integers in the custom list.
sumIntList :: IntList -> Int

-- Base case: The sum of an empty list is 0.
sumIntList EmptyList = 0

-- Recursive case: Add the head of the list to the sum of the tail.
sumIntList (Cons head tail) = head + sumIntList tail


-- Main function for testing
main :: IO ()
main = do
    let myLista = Cons 1 (Cons 2 (Cons 3 EmptyList))
    putStrLn "La lista es:"
    print myLista
    let result = sumIntList myLista
    putStrLn $ "La suma de la lista es: " ++ show result
