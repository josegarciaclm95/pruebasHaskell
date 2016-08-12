--Tutorial recursion
import Data.Char
import Data.List

repeat' :: a -> [a]
repeat' x = x : repeat' x

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

orderWeight :: String -> String
orderWeight [] = []
orderWeight ys = unwords [b | (a,b) <- (toIntv2 $ words ys)]

toInt :: [Char] -> [Int]
toInt = foldl (\a b ->a ++ [digitToInt b]) []

toIntv2 :: [[Char]] -> [(Int, String)]
toIntv2 xs = sortBy (\(a,b) (c,d) -> if a == c then compare b d else compare a c) [(sum $ toInt x, x)| x <- xs]

{--No hace falta poner read x::Int porque en la cabecera de la funcion ya hay informacion como para que read sepa que hacer
toInt :: String -> Int
toInt = read

toInt' :: [String] -> [([Int],String)]
toInt' xs = [([digitToInt y | y <- x],x) | x <- xs]
--}
