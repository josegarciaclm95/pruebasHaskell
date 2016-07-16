--tutorial_Tipos2

data Forma = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
area :: Forma -> Float
area (Circle _ _ x) = pi * x ^ 2
area (Rectangle a b _ _) = a * b
