# Ejemplo de proyecto final
## Objetivo
Crear un conversor entre un documento markdown y HTML. Es decir dado un archivo `.md` se crea un equivalente `.html`

## Gramática
En este caso se sigue el estándar para la notación BNF. Se puede tomar esta referencia: https://www.w3.org/Notation.html
```
<markdown> ::= <text> | <header> | <markdown> <text> | <markdown> <header>
<header> ::= <h1> | <h2> | <h3>
<h1> ::= "#" <text> "\n"
<h2> ::= "##" <text> "\n"
<h3> ::= "###" <text> "\n"
<text> ::= <chars>
<text> ::= <line> | <text> "\n" <line>
<line> ::= <chars>
<text> ::= <chars> | <link>
<link> ::= "[" <link_text> "]" "(" <url> ")"
<link_text> ::= <chars>
<url> ::= <chars>
<text> ::= <chars> | <bold> | <italic>
<bold> ::= "**" <chars> "**"
<italic> ::= "*" <chars> "*"
<chars> ::= <char> | <char> <chars>
<char> ::= <letter> | <digit> | <symbol>
<letter> ::= 'a' | 'b' | ... | 'z' | 'A' | ... | 'Z'
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
<symbol> :: ' ' | ',' | '.' | ';' | ':' |
```

En el caso de `<letter` y `<symbol>` son todas las apariciones de letras y símbolos necesarios para definir un identificador. No los escribi todos pero se entiende la idea. Aunque es importante mencionar que hay símbolos prohibidos como el caso del `#` ya que denota un título.


Es posible utilizar otro formato el Extended BNF (EBNF):
```
<markdown> ::= { <text> | <header> }
<header> ::= <h1> | <h2> | <h3>
<h1> ::= "#" <text> "\n"
<h2> ::= "##" <text> "\n"
<h3> ::= "###" <text> "\n"
<text> ::= <chars> | <link> | <bold> | <italic> | <line>
<line> ::= <chars> { "\n" <chars> }
<link> ::= "[" <link_text> "]" "(" <url> ")"
<link_text> ::= <chars>
<url> ::= <chars>
<bold> ::= "**" <chars> "**"
<italic> ::= "*" <chars> "*"
<chars> ::= { <char> }
<char> ::= <letter> | <digit> | <symbol>
<letter> ::= [a-zA-Z]
<digit> ::= [0-9]
<symbol> ::= ' ' | ',' | '.' | ';' | ':' | ...
```

### Prueba de la gramática
Probar que el término es parte de la gramática:
```
# Esto es un titulo
```

Dado que empezamos por el no-terminal más básico:
```
<markdown> ::= <text> | <header> | <markdown>
<markdown> ::= <header>
<header> ::= "#" <text> "\n"
<text> ::= <chars>
<chars> ::= <char><chars>
<char> ::= <letter> | <digit> | <symbol>
<letter> ::= 'E'



'E', 's', 't', 'o', ' ', 'e', 's', 'u', 'n', ' ', 't', 'i', 't', 'u', 'l', 'o'
```
