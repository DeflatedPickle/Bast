grammar Bast;

options {
    language=Python3;
}

/*
    Parser Rules
 */

program: code EOF;
code: line+; // (line | block)+;
// block: STRT_BLOCK line* END_BLOCK;
line: COMMENT | simple_stmt;

assignment: ID '=' (ID | NUMBER | BOOLEAN | STRING);
simple_stmt: assignment;

//if_stmt:;
//compound_stmt:;

/*
    Lexer Rules
 */

COMMENT: '//' ~[\r\n]*;

// STRT_BLOCK: '{';
// END_BLOCK: '}';

LOWER: [a-z];
UPPER: [A-Z];

SPACE: [ \t\r\n] -> skip;

STRING: ["] ~["\r\n]* ["];

LETTER: LOWER | UPPER;
NUMBER: [0-9]+;
BOOLEAN: 'true' | 'false';

ID: LETTER (LETTER | NUMBER)*;

WS: [ \t\r\n\f]+ -> skip;