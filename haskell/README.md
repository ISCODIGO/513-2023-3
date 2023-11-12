# Haskell

## Instalacion de Haskell en Windows

### Recomendado
Instalar Haskell con GHCUP: https://www.haskell.org/ghcup/

### Otras Instalaciones:
- Instalar Haskell + Stack: https://docs.haskellstack.org/en/stable/
- Herramientas mínimas de Haskell (quiza la que lleva más pasos): https://www.youtube.com/watch?v=PA2p-8LCSck

## Ejecución de los programas
### Compilar programa
Para generar código máquina se puede utilizar el siguiente comando: 
```
ghc -o nombre-programa archivo-fuente.hs
```

### Interpretar elementos
Se cargan las funciones definidas en el archivo: 
```
ghci archivo-fuente.hs
```
Esto abre el REPL de Haskell y se pueden manejar las funciones.