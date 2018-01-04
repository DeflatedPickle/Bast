grammar Bast;

options {
    language=Python3;
}

/*
    Parser Rules
 */

program: shebang* code EOF;
code: (line | block)+;
block: STRT_BLOCK line* END_BLOCK;
line: COMMENT | simple_stmt;

assignment: ID '=' (ID | NUMBER | BOOLEAN | str_dec);
str_dec: '"' (LETTER | NUMBER | BOOLEAN)* '"';
simple_stmt: assignment | str_dec;

//if_stmt:;
//compound_stmt:;

shebang: (SHEBANG 'Batch') | (SHEBANG 'Bash');

/*
    Lexer Rules
 */

COMMENT: '//' ~[\r\n]*;

SHEBANG: '#!';

STRT_BLOCK: '{';
END_BLOCK: '}';

LOWER: [a-z];
UPPER: [A-Z];
LETTER: LOWER | UPPER;
NUMBER: [0-9]+;
BOOLEAN: 'true' | 'false';
ID: LETTER (LETTER | NUMBER)*;

WS: [ \t\r\n\f]+ -> skip;