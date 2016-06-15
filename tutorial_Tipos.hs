-- Tipado estatico
-- Inferencia de tipos
-- :t algo nos dice el tipo de ese algo
-- :: - tiene el tipo
-- Es una buena practica escribir el tipo de las funciones, aunque tambien podemos definirlas
-- y sacar el tipo con :t
-- Int, Integer - ambos representan enteros. Integer está sin acotar, pero es mas eficiente Int
-- Float, Double - coma flotante de simple y doble precision
-- Bool, booleano. Chat - caracter, [Char], String - string

recibeCadena :: String -> String
recibeCadena x = x

-- Variables de tipo. Permiten escribir funciones polimorficas
-- => Antes de este simbolo se ponen las restricciones de clase. Las clases definen comportamiento de elementos
-- *Eq - tipos que soportan comparaciones de iguales. Todos tipos estandar menos funciones y tipo IO
-- Implementa operaciones == y /=
-- *Ord - tipos que poseen algun orden. Tipos estandares menos funciones
-- Tipo Ordering. Tipo con tres valores: mayor que (GT), igual que (EQ), menor que (LT)
-- Se puede llamar a la funcion 'compare' con elementos de clase Ord y que nos devuelva su orden con un tipo
-- Ordering. Para ser de tipo Ord hay que pertenecer a la clase Eq
-- *Show. Sus miembros tienen un toString, basicamente
-- *Read. Sus miembros tienen la funcion read, que deshace Show. 
-- Ej. show True -> "True" ([Char]). read "True" -> True (Bool)
-- read no se llama solo, sino como parte de otra expresión para que el compilador sepa traducirlo
-- a = read "True" . Eso fallaria
a = read "True" && True  
-- Eso funciona
-- Anotaciones de tipo explicitas. Para funciones que devuelven 'a', usamos una notacion de tipo
-- ':: Tipo' para indicar su tipo
b = read "True" :: Bool
-- Eso funciona
-- *Enum - tipos secuencialmente ordenados. Se pueden usar en listas arimeticas. Son de tipo Enum
-- (), Bool, Char, Ordering, Int, Integer, Float y Double.
-- *Bounded - elementos acotados. minBound y maxBound dan cotas inferior y superior
-- *Num - clase de tipos numericos. Sus elementos se comportan como numeros. Los numeros son constantes 
-- polimorficas. Un Num ha de ser miembro de Eq y Show.
-- *Integral. Numeros enteros. Contiene Int e Integer
-- *Floating. Numeros de coma flotante.
-- Funcion fromIntegral. Coge un Integral y lo expresa en un tipo Num
-- la definicion de una funcion puede llevar varias restricciones de clase asociadas
-- funcion :: (Num a, Eq b, Ord c) => a -> b -> c -> [d]
funcion :: (Num a, Eq b, Ord c) => a -> b -> c -> [d]
funcion _ _ _ = []