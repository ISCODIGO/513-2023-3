class MarkdownParser:
    def __init__(self, tokens):
        self.tokens = tokens
        self.current_token = None
        self.index = -1
        self.next_token()

    def next_token(self):
        self.index += 1
        if self.index < len(self.tokens):
            self.current_token = self.tokens[self.index]
        else:
            self.current_token = None

    def parse(self):
        ast = []
        while self.current_token is not None:
            if self.current_token[0].startswith("H"):
                header_node = self.parse_header()
                if header_node:
                    ast.append(header_node)
                else:
                    # Manejar error: encabezado sin texto
                    raise ValueError("Error de sintaxis: Encabezado sin texto")
            elif self.current_token[0] == "TEXT":
                ast.append(self.parse_text())
            else:
                # Manejar otros casos o tokens inesperados
                self.next_token()
        return ast

    def parse_header(self):
        header_level = self.current_token[0]
        header_content = self.current_token[1].strip()

        # Verificar si hay contenido después del signo numeral
        if header_content.startswith("#") and len(header_content.split()) <= 1:
            return None
        else:
            self.next_token()
            return {"type": "header", "level": header_level, "content": header_content}

    def parse_text(self):
        text_content = self.current_token[1]
        self.next_token()
        return {"type": "text", "content": text_content}

