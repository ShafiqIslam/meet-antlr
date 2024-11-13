grammar LabeledExpr;

/** The start rule; begin parsing here. */
prog:   stat+ ;

stat:   expr NEWLINE                        # printExpr
    |   ID '=' expr NEWLINE                 # assign
    |   'clear'                             # clear
    |   NEWLINE                             # blank
    ;

expr:   expr op=('*'|'/') expr              # MulDiv
    |   expr op=('+'|'-') expr              # AddSub
    |   INT                                 # int
    |   ID                                  # id
    |   '(' expr ')'                        # parens
    ;

ID  :   [a-zA-Z]+ ;
INT :   [0-9]+ ;     
NEWLINE:'\r'? '\n' ; 
WS  :   [ \t]+ -> skip ;

MUL : '*' ; // assigns token name to '*' used above in grammar
DIV : '/' ;
ADD : '+' ;
SUB : '-' ;