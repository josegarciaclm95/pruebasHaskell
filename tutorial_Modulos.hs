import Data.List
count :: (Eq a) => a -> [a] -> Int
count x xs = length $ filter (==x) xs	
--head (filter (\(a,b) -> odd b) (


--find the odd int
findOdd :: [Int] -> Int
findOdd xs = snd $ head $ filter (\(a,b) -> odd a) $ nub $ zip [count x xs | x <- xs] xs

{--
Solucion de usuario trapcodien
findOdd :: [Int] -> Int
findOdd xs = head [x | x <- xs, odd . length . filter (==x) $ xs]
}