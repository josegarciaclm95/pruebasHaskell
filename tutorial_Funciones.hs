sayNumber :: (Integral a, Show a) => a -> String
sayNumber x = if x>= 1 && x <= 5 then show x else "No entre 1 y 5"

-- Las funciones trabajan con patrones, evaluandolos de arriba a abajo, por eso hay que colocarlos 
-- los mas especificos primero

sayMe :: (Integral a) => a -> String
sayMe 1 = "¡Uno!"
sayMe 2 = "¡Dos!"
sayMe 3 = "¡Tres!"
sayMe 4 = "¡Cuatro!"
sayMe 5 = "¡Cinco!"
sayMe x = "No entre uno 1 y 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Tenemos que incluir siempre un patrón general para que la función no falle por patrones poco
-- exhaustivos
-- Tambien se pueden usar los patrones con la listas
-- Para referirnos a elementos de la lista, usamos la notacion ':'
-- Ej. x:t - el compilador entiende x como la cabeza y t como la cola
-- Ej. x:y:t - el compilador entiende x como primer elemento, y como segundo, y t como cola a partir del tercer elemento
--Si un patron falla, se pasa al sigueinte elemento
listaA = [[1..4],[2..8],[1..3],[4..11]]
listaB = [[x,y,z,u] | x:y:z:u:t <- listaA]

cabeza::[a] -> a
cabeza [] = error "lista vacia"
cabeza (x:_) = x
-- parse error si no encapsulamos entre parentesis los x:xs
sum'::(Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs


--uso de @ delante de un patrón para referirnos a el como un todo
--Si no se cumple ninguna guarda, pasamos al resto de patrones
funcLista::[a] -> String
funcLista x 
		| length x <= 1 = "Menor o igual que 1"
		| otherwise = "Mayor que " ++ vari ++ " (otherwise)"
		where vari = "1"
funcLista x = "Mayor que 1"

{--
funcLista'::[a] -> String
funcLista' [] = "Menor o igual que " ++ var
funcLista' x:[] = "Menor o igual que" ++ var
funcLista x:y:_ = "Mayor que " ++ var
	where var = " 1 "
--}	

--se puede definir una funcion de forma infija llamandola asi `funcion` en los patrones
-- se pueden usar variables en las guardas definiendolas despues de la palabra clave 'where'
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= 18.5 = "Tienes infrapeso ¿Eres emo?"
    | bmi <= 25.0 = "Supuestamente eres normal... Espero que seas feo."
    | bmi <= 30.0 = "¡Estás gordo! Pierde algo de peso gordito."
    where bmi = weight / height ^ 2
bmiTell weight height = "Enhorabuena, eres una ballena"

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2
--Se define la funcion auxiliar bmi en el where de calcBmis

initials :: [a] -> String
initials [] = "vacia"
initials (x:xs) = "longitud es " ++ show len
	where len = length (x:xs) 

-- let <definicion> in <expresion>
-- es como where pero mas local

sumaListSize :: [a] -> [b] -> Int
sumaListSize (h:t) (x:xs) = 
			let size1 = length (h:t)
			in size1 + length (x:xs)

--en algunos sitios he visto el let con los elementos separados solo por salto de linea, sin ;
funcion2:: [a] -> String
funcion2 (x:xs) = 
	let size = length (x:xs);
		size1 = length xs;
		cosa = "Hola mundo en let"
	in show size ++ " "  ++ show size1 ++ " " ++ cosa

-- podemos definir funciones con let
listaD = let cuadrado x = x * x in [cuadrado 2, cuadrado 3, cuadrado 4]

head' :: [a] -> a
head' xs = case xs of [] -> error "Lista vacia";
						(x:_) -> x

-- case puede usarse en cualquier sitio, no solo en una funcion. Ej. En sustitucion de ifs