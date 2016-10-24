-- The follow is a NON-curried function. It takes one argument, a pair
myAddA :: (Int, Int) -> Int
myAddA (x, y) = x + y

-- The following is a curried function
myAddB :: Int -> Int -> Int
myAddB x y = x + y

-- Another curried function
-- Notice that the signature is the same, but the definition is different
myAddC :: Int -> Int -> Int
myAddC x = \y -> x + y

-- Another curried function
-- Notice how we can keep pushing the arguments around the equal sign
myAddD :: Int -> Int -> Int
myAddD = \x -> \y -> x + y

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myFakeZip :: ([a], [b]) -> [(a, b)]
myFakeZip ([], []) = []
myFakeZip (x:xs, y:ys) = [(x, y)] ++ myFakeZip (xs, ys)
