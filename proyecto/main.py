from constants import INPUT_TEXT
from lexer import MarkdownLexer
from parser import MarkdownParser


lexer = MarkdownLexer(INPUT_TEXT)
for token in lexer.get_tokens():
    print(token)

for err in lexer.errors:
    print("Error", err)


p = MarkdownParser(lexer.get_tokens())
try:
    ast = p.parse()
    for node in ast:
        print(node)
except ValueError as e:
    print(e)
