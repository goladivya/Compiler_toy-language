%{

#include <stdio.h>
#include <string.h>
#include <math.h>
int yylex();
void yyerror(char const *);
extern FILE *yyin,*yyout,*lexout;

%}

%token INT CHAR WHILE IF ELSE RETURN COMMA ASSIGN PLUS MINUS DIV MUL SEMI LEFT_CURLY RIGHT_CURLY LEFT_BRAC RIGHT_BRAC LEFT_SQBRAC RIGHT_SQBRAC GREATER_THAN LESS_THAN COMPARE_EQUAL LESS_THAN_EQUAL GREATER_THAN_EQUAL COMPARE_NOT_EQUAL
%union{
    int num;
    char *str;
}
%token <num> NUM
%token <str> ID
%token <str> STRING
%left PLUS MINUS
%left MUL DIV
%left LEFT_BRAC RIGHT_BRAC

%%

declarations : declaration
;

declaration : variable_decl          {fprintf(yyout,"\n");}
    | function_decl             {fprintf(yyout,"\n");}
    | function_defination              {fprintf(yyout,"\n");}
    | declaration variable_decl      {fprintf(yyout,"\n");}
    | declaration function_decl     {fprintf(yyout,"\n");}
    | declaration function_defination      {fprintf(yyout,"\n");}
;

variable_decl : int identifier SEMI  
    | int identifier ASSIGN expr SEMI        {fprintf(yyout,"Assignment : =\n");}
    | char identifier SEMI               
    | char identifier ASSIGN string SEMI     {fprintf(yyout,"Assignment : =\n");}
;

function_decl : int identifier LEFT_BRAC function_args RIGHT_BRAC SEMI           {fprintf(yyout,"Function declared above\n\n");}
    | int identifier LEFT_BRAC RIGHT_BRAC SEMI                           {fprintf(yyout,"Function declared above\n\n");}
    | char identifier LEFT_BRAC function_args RIGHT_BRAC SEMI                {fprintf(yyout,"Function declared above\n\n");}
    | char identifier LEFT_BRAC RIGHT_BRAC SEMI                          {fprintf(yyout,"Function declared above\n\n");}
;

function_defination : int identifier LEFT_BRAC function_args RIGHT_BRAC function_body       {fprintf(yyout,"Function Defined above\n\n");}
    | int identifier LEFT_BRAC RIGHT_BRAC function_body                      {fprintf(yyout,"Function Defined above\n\n");}
    | char identifier LEFT_BRAC function_args RIGHT_BRAC function_body           {fprintf(yyout,"Function Defined above\n\n");}
    | char identifier LEFT_BRAC RIGHT_BRAC function_body                     {fprintf(yyout,"Function Defined above\n\n");}
;

function_args : int identifier                   {fprintf(yyout,"Function Arguments Passed Above\n\n");}
    | int identifier COMMA function_args
    | char identifier                        {fprintf(yyout,"Function Arguments Passed Above\n\n");}
    | char identifier COMMA function_args
;

int : INT       {fprintf(yyout,"Datatype : int\n");}
;

char : CHAR     {fprintf(yyout,"Datatype : char *\n");}
;

function_body : LEFT_CURLY stmt_list RIGHT_CURLY
    | stmt
;

stmt_list : stmt_list stmt
    | stmt
;

stmt : assign_stmt
    | function_call             {fprintf(yyout,"Function call ends \n\n");}
    | return_stmt           {fprintf(yyout,"Return statement \n\n");}
    | condition             {fprintf(yyout,"If Condition Ends \n\n");}
    | loop                  {fprintf(yyout,"While Loop Ends \n\n");}
    | variable_decl
;

assign_stmt : expr ASSIGN expr SEMI
;

return_stmt : RETURN SEMI
    | RETURN expr SEMI
;

function_call : identifier LEFT_BRAC RIGHT_BRAC SEMI
    | identifier LEFT_BRAC expr
;

condition : IF LEFT_BRAC bool RIGHT_BRAC function_body
    | IF LEFT_BRAC bool RIGHT_BRAC function_body ELSE function_body
;

loop : WHILE LEFT_BRAC bool RIGHT_BRAC function_body
;

bool : bool LESS_THAN bool              {fprintf(yyout,"Operator : < \n");}
    | bool GREATER_THAN bool            {fprintf(yyout,"Operator : > \n");}
    | bool COMPARE_EQUAL bool           {fprintf(yyout,"Operator : == \n");}
    | bool COMPARE_NOT_EQUAL bool       {fprintf(yyout,"Operator : != \n");}
    | bool LESS_THAN_EQUAL bool         {fprintf(yyout,"Operator : <= \n");}
    | bool GREATER_THAN_EQUAL bool      {fprintf(yyout,"Operator : >= \n");}
    | expr
;

identifier : ID      {fprintf(yyout,"Varibale : %s \n", $1);}
;

number : NUM    {fprintf(yyout,"Value : %d \n", $1);}
;

string : STRING {fprintf(yyout,"Value : %s \n", $1);}
;

expr : LEFT_BRAC expr RIGHT_BRAC
    | expr PLUS expr            {fprintf(yyout,"Operator : + \n");}
    | expr MINUS expr           {fprintf(yyout,"Operator : - \n");}
    | expr MUL expr             {fprintf(yyout,"Operator : * \n");}
    | expr DIV expr             {fprintf(yyout,"Operator : / \n");}
    | number                    
    | identifier
;

%%

int main()
{
    yyin=fopen("Sample1.cu","r");
    //yyin=fopen("Sample2.cu","r");
    yyout=fopen("Parser.txt","w");
    lexout=fopen("Lexer.txt","w");
    yyparse();
    return 0;
}

void yyerror(char const *s){
    printf("Syntax Error\n");
}