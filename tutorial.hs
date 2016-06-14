--Aprende Haskell por el bien de todos
--Podemos cambiar el prompt "Prelude>" mediante :set prompt "el pront que queramos asi entre comillas" 
-- && (and) || (or) not (negar) == (comparacion de igualdad) /= (comparacion de distinto) /
--succ - devuelve el succesor de un elemento
-- * funcion infija -> 4 * 8
-- succ funcion prefija -> succ 7 (8)
-- argumentos separados por espacios
-- las funciones tienen mas prioridad que los operadores
-- succ 9 * 10 = (succ 9) * 10
-- las prefijas de dos parametros se pueden llamar como infijas
-- 9 `min` 10
-- div -> division entera. / -> division decimal

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x <= 100 then doubleMe x else x

doubleSmallNumber' x = (if x <= 100 then doubleMe x else x) + 1

-- Un if es una expresion que devuelve algo, que tiene que tener un then y un else

-- Listas homogeneas: todos los elementos del mismo tipo. Los strings son cadenas de caracteres

listaA = "Hola"
listaB = " Mundo"
listaC = [1..6]
-- ++ concatena listas. Cuidado con concatenar listas muy largas. Añadir elemento por la cabeza es instantaneo
listaD = 'H':"ola mundo"
-- !! obtener elementos por indice
elemento = listaA !! 0 --H
--listas dentro de listas pueden ser de distinto tamaño, pero no distinto tipo
--se pueden comparar las listas
-- head (cabeza), tail (cola), last (ultimo), init (todo menos ultimo)
-- llamar esas operaciones sobre listas vacias da un error que solo se ve al ejecutar
-- length (tamaño), null (esVacia), reverse (invierte), take n lista (saca n elementos de una lista), 
-- drop n lista (elimina n elementos por el principio)
-- sum (suma de elementos), elem num lista (num esta en lista?)
