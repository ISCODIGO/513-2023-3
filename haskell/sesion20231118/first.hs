first :: (Int, b) -> Int
first (x, _) = x

square :: Int -> Int
square x = x ^ 2  -- x * x

squareFirst :: (Int, b) -> Int
squareFirst = square . first

main :: IO ()
main = print (squareFirst (3, "irrelevant string"))