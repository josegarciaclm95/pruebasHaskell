import Control.Monad

suma :: (Num a, Show a) => a -> a -> a
suma x y = x + y

{--
main = do
	putStrLn "Hola mundo!, ¿cómo te llamas?"
	name <- getLine
	--result = show $ suma 4 $ read name :: Int
	putStrLn ("Hello " ++ name ++ ", you rock!")
--}

main3 :: IO ()
main3 = do
    line <- getLine;
		main2
    if null line
        then return ()
        else do
            putStrLn $ reverseWords line
            main3

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

main2 = putStrLn "Esto es de main2"

main4 = do
    rs <- sequence [getLine, getLine, getLine]
    print rs

main = do
  colors <- forM [1,2,3,4] (\a -> do
    putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
    getLine)
  putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "
  mapM putStrLn colors
