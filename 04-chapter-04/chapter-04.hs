-- Types --
myAbsA :: Int -> Int
myAbsA x = if x >= 0 then x else -x

-- Guards --
myAbsB :: Int -> Int
myAbsB n | n >= 0 = n
         | otherwise = -n

-- Pattern Matching --
myNotA :: Bool -> Bool
myNotA True = False
myNotA False = True

-- Guard --
myNotB :: Bool -> Bool
myNotB x | x == True = False
         | otherwise = True

-- Pattern Matching
myAndA :: Bool -> Bool -> Bool
myAndA True True = True
myAndA _ False = False
myAndA False True = False

myAndB :: Bool -> Bool -> Bool
myAndB first second | first == True && second == True = True
                    | otherwise = False

myAndC :: Bool -> Bool -> Bool
myAndC first second | first == second == True = True
                    | otherwise = True
-- Types --
myAbsA :: Int -> Int
myAbsA x = if x >= 0 then x else -x

-- Guards --
myAbsB :: Int -> Int
myAbsB n | n >= 0 = n
         | otherwise = -n

-- Pattern Matching --
myNotA :: Bool -> Bool
myNotA True = False
myNotA False = True

-- Guard --
myNotB :: Bool -> Bool
myNotB x | x == True = False
         | otherwise = True

-- Pattern Matching
myAndA :: Bool -> Bool -> Bool
myAndA True True = True
myAndA _ False = False
myAndA False True = False

myAndB :: Bool -> Bool -> Bool
myAndB first second | first == True && second == True = True
                    | otherwise = False

-- Evaluation Order is Irrelevant in Pure Functional Programming --
