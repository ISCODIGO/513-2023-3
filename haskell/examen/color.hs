-- en codigo si es relevante usar mayusculas pero en el examen no lo era
data Color = Red | Green | Blue

-- opcion 1
mostrarColor :: Color -> String
mostrarColor Red = "Esto es rojo"
mostrarColor Green = "Esto es verde"
mostrarColor Blue = "Esto es azul"

--opcion 2
mostrarColor2 :: Color -> String
mostrarColor2 color = case color of
    Red -> "Esto es rojo"
    Green -> "Esto es verde"
    Blue -> "Esto es azul"
