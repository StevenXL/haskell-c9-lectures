-- Homework Problem 1
-- define safetail. It behaves the same way as tail, except that safetail maps
-- an empty list to an empty list

-- safetail conditional
safeTailA :: [a] -> [a]
safeTailA x = if null x then [] else tail x

-- safetail guarded
safeTailB x | null x = []
            | otherwise = tail x

-- safetail pattern matching
safeTailC [] = []
safeTailC (x:xs) = xs

-- Homework Problem 2
-- Give three possible definitions for the || operators using pattern matching
myOr :: Bool -> Bool -> Bool
myOr _ True = True
myOr True _ = True
myOr _ _ = False

-- Homework Problem 3
-- Redefine the following version of && using conditionals rather than pattern
-- matching
-- True && True = True
-- _ && _ = False
myAnd a b = if a == True then if b == True then True else False else False
