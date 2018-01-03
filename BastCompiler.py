import antlr4

from BastLexer import BastLexer
from BastListener import BastListener
from BastParser import BastParser


class BastCompiler(BastListener):
    def __init__(self):
        pass


if __name__ == "__main__":
    lexer = BastLexer(antlr4.FileStream("example.bsst"))
    stream = antlr4.CommonTokenStream(lexer)
    parser = BastParser(stream)
    tree = parser.program()

    compiler = BastCompiler()
    walker = antlr4.ParseTreeWalker()
    walker.walk(compiler, tree)
