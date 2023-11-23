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
<letter> ::= 'a' | 'b' | ... | 'z' | 'A' | 'B' | ... 'Z'
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
<symbol> :: ' ' | ',' | '.' | ';' | ':' |
```

En el caso de `<letter` y `<symbol>` son todas las apariciones de letras y símbolos necesarios para definir un identificador. No los escribi todos pero se entiende la idea.