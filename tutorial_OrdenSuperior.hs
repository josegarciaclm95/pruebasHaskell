--tutorial orden superior
import Data.Char

predicado :: (Num a, Ord a) => a -> Bool
predicado x = x >= 5

sumatorio :: (Num a) => a -> a -> a
sumatorio x y = x + y

funcion :: (Integral a) => a -> a
funcion x = if even x 
			then div x 2
			else x * 3

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs


generator :: Integer -> Integer -> Integer -> [Integer]
generator x y z 
			| z <= 0 = []
			| x > y = takeWhile (>=y) [x,x-z..]
generator x y z = takeWhile(<=y) [x, x+z..]

toJadenCase :: String -> String
toJadenCase (x:y:z) 
			| x == " " = x : toJadenCase $ (toUpper y:z)
			| otherwise = x : toJadenCase (y:z)
