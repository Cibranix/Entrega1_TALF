%{
#include <stdio.h>
#include "tokens.h" 
%}

IDENTIFICADORES ([A-Za-z]+(_[0-9]*))+
ESCAPE (\'|\"|\\|\a|\b | \f | \n | \r | \t | \v)
DECIMAL [0-9]+
OCTAL "\[Oo]"[0-7]+
HEXADECIMAL \[Hh][0-9A-Fa-f]+

%%

(?i:abstract)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(ABSTRACT);
(?i:array)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(ARRAY);
(?i:boolean)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(BOOLEAN);
(?i:case)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(CASE);
(?i:character)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(CHARACTER);
(?i:class)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(CLASS);
(?i:constant)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(CONSTANT);
(?i:constructor)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(CONSTRUCTOR);
(?i:default)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(DEFAULT);
(?i:destructor)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(DESTRUCTOR);
(?i:else)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(ELSE);
(?i:enumeration)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(ENUMERATION);
(?i:especific)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(ESPECIFIC);
(?i:exception)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(EXCEPTION);
(?i:exit)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(EXIT);
(?i:false)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FALSE);
(?i:final)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FINAL);
(?i:finish)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FINISH);
(?i:float)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FLOAT);
(?i:for)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FOR);
(?i:foreach)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FOREACH);
(?i:function)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(FUNCTION);
(?i:hashtable)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(HASHTABLE);
(?i:if)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(IF);
(?i:in)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(IN);
(?i:integer)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(INTEGER);
(?i:is)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(IS);
(?i:loop)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(LOOP);
(?i:nil)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(NIL);
(?i:of)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(OF);
(?i:others)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(OTHERS);
(?i:out)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(OUT);
(?i:private)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(PRIVATE);
(?i:procedure)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(PROCEDURE);
(?i:protected)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(PROTECTED);
(?i:public)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(PUBLIC);
(?i:raise)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(RAISE);
(?i:record)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(RECORD);
(?i:return)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(RETURN);
(?i:reverse)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(REVERSE);
(?i:then)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(THEN);
(?i:true)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(TRUE);
(?i:try)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(TRY);
(?i:type)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(TYPE);
(?i:start)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(START);
(?i:when)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(WHEN);
(?i:while)  printf("Linea %d - palabra reservada: %s\n", linea, yytext);return(WHILE);


%%

int yywrap() {
  return(1);
  }

int main(int argc, char *argv[]) {

  if (argc < 2) {
    printf("Uso: ./machina NombreArchivo\n");
    }
  else {
    yyin = fopen(argv[1],"r");
    while (yylex());
    }
  }
