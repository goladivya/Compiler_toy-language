
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     CHAR = 259,
     WHILE = 260,
     IF = 261,
     ELSE = 262,
     RETURN = 263,
     COMMA = 264,
     ASSIGN = 265,
     PLUS = 266,
     MINUS = 267,
     DIV = 268,
     MUL = 269,
     SEMI = 270,
     LEFT_CURLY = 271,
     RIGHT_CURLY = 272,
     LEFT_BRAC = 273,
     RIGHT_BRAC = 274,
     LEFT_SQBRAC = 275,
     RIGHT_SQBRAC = 276,
     GREATER_THAN = 277,
     LESS_THAN = 278,
     COMPARE_EQUAL = 279,
     LESS_THAN_EQUAL = 280,
     GREATER_THAN_EQUAL = 281,
     COMPARE_NOT_EQUAL = 282,
     NUM = 283,
     ID = 284,
     STRING = 285
   };
#endif
/* Tokens.  */
#define INT 258
#define CHAR 259
#define WHILE 260
#define IF 261
#define ELSE 262
#define RETURN 263
#define COMMA 264
#define ASSIGN 265
#define PLUS 266
#define MINUS 267
#define DIV 268
#define MUL 269
#define SEMI 270
#define LEFT_CURLY 271
#define RIGHT_CURLY 272
#define LEFT_BRAC 273
#define RIGHT_BRAC 274
#define LEFT_SQBRAC 275
#define RIGHT_SQBRAC 276
#define GREATER_THAN 277
#define LESS_THAN 278
#define COMPARE_EQUAL 279
#define LESS_THAN_EQUAL 280
#define GREATER_THAN_EQUAL 281
#define COMPARE_NOT_EQUAL 282
#define NUM 283
#define ID 284
#define STRING 285




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 13 "cucu.y"

    int num;
    char *str;



/* Line 1676 of yacc.c  */
#line 119 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


