/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
lexer grammar Sql92CommonLexer;

import CommonLexer;

GENERAL_IDENTIFIER : ALPHA (UNDERSCORE|DIGIT|ALPHA)*;
//标识符
SQL_LANGUAGE_IDENTIFIER : ALPHA (UNDERSCORE|DIGIT|ALPHA)*;
//非单引号字符
NONQUOTE_CHARACTER : ~'\'';
//''
QUOTE_SYMBOL : QUOTE QUOTE;
//非双引号字符
NONDOUBLEQUOTE_CHARACTER : ~'"';
//""
DOUBLEQUOTE_SYMBOL : DOUBLE_QUOTE DOUBLE_QUOTE;
//语言定义
ADA : 'ADA';
C : 'C';
COBOL : 'COBOL';
FORTRAN : 'FORTRAN';
MUMPS : 'MUMPS';
PASCAL : 'PASCAL';
PLI : 'PLI';
LANGUAGE_NAME : ADA|C|COBOL|FORTRAN|MUMPS|PASCAL|PLI;

//操作符
NOT_EQ : '<>';
GREATER_THAN_OR_EQ : '>=';
LESS_THAN_OR_QE : '<=';
CONCATENATION : '||';
DOUBLE_PERIOD : '..';

NULL : 'NULL';
DEFAULT : 'DEFAULT';
SOME : 'SOME';
ANY : 'ANY';
ALL : 'ALL';
DISTINCT : 'DISTINCT';
AVG : 'AVG';
SUM : 'SUM';
MIN : 'MIN';
MAX : 'MAX';
COUNT : 'COUNT';

fragment
    COMMENT_INTRODUCER : MINUS_SIGN MINUS_SIGN MINUS_SIGN*;



	