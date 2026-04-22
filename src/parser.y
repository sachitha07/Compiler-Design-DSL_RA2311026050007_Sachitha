%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();

int symbol_table[26];  // for variables a-z
%}

%union {
    int num;
}

%token SET ADD SUB PRINT
%token <num> ID NUMBER

%%

program:
    program statement
    | statement
    ;

statement:
      SET ID '=' NUMBER {
          symbol_table[$2 - 'a'] = $4;
          printf("Assigned %c = %d\n", $2, $4);
      }
    | ADD ID ID {
          printf("t1 = %c + %c\n", $2, $3);
      }
    | SUB ID ID {
          printf("t1 = %c - %c\n", $2, $3);
      }
    | PRINT ID {
          printf("Print %c = %d\n", $2, symbol_table[$2 - 'a']);
      }
    ;

%%

void yyerror(const char *s) {
    printf("Error: %s\n", s);
}

int main() {
    printf("Enter DSL code:\n");
    yyparse();
    return 0;
}
