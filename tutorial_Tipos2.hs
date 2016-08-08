--tutorial_Tipos2
{--
module Shapes
( Point(..)
, Shape(..)
, surface
, nudge
, baseCircle
, baseRect
) where

Haciendo Shape (..) estamos exportando todos los constructores de datos de Shape,
--}
data Forma = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
area :: Forma -> Float
area (Circle _ _ x) = pi * x ^ 2
area (Rectangle a b _ _) = a * b

{--
data Either a b = Left a | Right b deriving (Eq, Show, Ord, Read)

func :: (Integral a) => a -> Main.Either String a
func x
		| x <= 20 = Main.Left "error, es menor o igual de 20"
func x = Main.Right $ 4 * x
--}
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

data TrafficLight = Red | Yellow | Green deriving (Eq)

instance Show TrafficLight where
    show Red = "Red light"
    show Yellow = "Yellow light"
    show Green = "Green light"


divisors :: (Show a, Integral a) => a -> Either String [a]
divisors a = let divi = [x | x <- [2..a-1], mod a x == 0]
              in if length divi == 0
                 then Left $ show a ++ " is prime"
                 else Right divi
