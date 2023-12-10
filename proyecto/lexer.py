"""
Este codigo tratara de abrir un archivo y desglosarlo en tokens.
Tratara de asociar cada token con los elementos de la gramatica.
"""
import re


class MarkdownLexer:
    def __init__(self, input_text):
        self.input_text = input_text
        self.tokens = []
        self.errors = []
        self.tokenize()

    def tokenize(self):
        token_specs = [
            ("H1", r"^#\s.*"),          # Encabezado nivel 1
            ("H2", r"^##\s.*"),         # Encabezado nivel 2
            ("H3", r"^###\s.*"),        # Encabezado nivel 3
            ("BOLD", r"\*\*.*\*\*"),    # Texto en negrita
            ("ITALIC", r"\*.*\*"),      # Texto en cursiva
            ("LINK", r"\[.*\]\(.*\)"),  # Enlaces
            ('TEXT', r'^(?!#).*'),      # Texto plano (sin '#')
        ]

        for line in self.input_text.split("\n"):
            is_token = False
            for token in token_specs:
                regex = re.compile(token[1])
                match = regex.match(line)
                if match:
                    self.tokens.append((token[0], match.group(0)))
                    is_token = True
                    break
            if not is_token:
                self.errors.append({line: "Token sin identificar"})

    def get_tokens(self):
        return self.tokens
