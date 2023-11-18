xor1 :: Bool -> Bool -> Bool
xor1 True True = False
xor1 False False = False
xor1 False True = True
xor1 True False = True
