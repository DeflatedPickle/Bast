grammar Bast;

options {
    language=Python3;
}

/*
    Parser Rules
 */

program: shebang* code EOF;
code: (line | COMMENT)+;
line: statement;

var_dec: ID '=' (ID | NUMBER | BOOLEAN);
str_dec: '"' (LETTER | NUMBER | BOOLEAN)* '"';
statement: var_dec | str_dec;

shebang: ('#' 'Batch') | ('#' 'Bash');

/*
    Lexer Rules
 */

COMMENT: '//' ~[\r\n]*;

LOWER: [a-z];
UPPER: [A-Z];
LETTER: (LOWER | UPPER)+;
NUMBER: [0-9]+;
BOOLEAN: 'true' | 'false';
ID: LOWER+ (LETTER | NUMBER | BOOLEAN)*;

WS: [ \t\r\n\f]+ -> skip;