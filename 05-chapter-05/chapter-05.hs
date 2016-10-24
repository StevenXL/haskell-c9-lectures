-- List Comprehension

-- In this chapter, Erik writes a nested foreach loop to make the concept of
-- list comprehension clearer. In that example, it is easy to see that we can
-- use the variable generated in the "outer loop" within the inner loop.

-- Below, x <- [1 .. 5] is, concenptually, our outer loop, so we can use the
-- variable x in our inner loop, y <- [x .. 5]
val = [(x, y) | x <- [1 .. 5], y <- [x .. 5]]

-- Homework

-- Problem 1: A triple (x, y, z) of positive integers is called pythagorean if:
-- x^2 + y ^ 2 = z ^ 2. Using a list comprehension, define a function:
-- pyths :: Int -> [(Int, Int, Int)]
-- that maps an integer n to all such triples with components in [1..n].

isPythagorean :: (Int, Int, Int) -> Bool
isPythagorean (x, y, z) = x ^ 2 + y ^ 2 == z ^ 2

combinatorialTriples :: Int -> [(Int, Int, Int)]
combinatorialTriples n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n]]

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | (x, y, z) <- combinatorialTriples n, isPythagorean (x, y, z)]

-- Problem 2: A positive integer is perfect if it equals the sum of all of its
-- factors, excluding the number itself. Using a list comprehension, define a
-- function:
-- perfects :: Int -> [Int]
-- that returns the list of all perfects numbers up to a given limit.
-- perfect 500 = [6, 28, 456]

isPerfect :: Int -> [Int] -> Bool
isPerfect n factors = sum (init factors) == n

isFactor :: Int -> Int -> Bool
isFactor dividend divisor = snd (dividend `divMod` divisor) == 0

factors :: Int -> [Int]
factors n = [x | x <- [1..n], isFactor n x]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], isPerfect x (factors x)]
