# Compiler For a toy language 

##### About the language it compiles
<ul>
  <li>It is a subset of C language.</li>
  <li>It supports 2 types of variable int , char* . </li>
  <li>Function defination , function declartion are supported.</li>
   <li>Function body is a bunch of statement. Statements like expressions , assignment ,function call , return statement are supported.</li>
  <li>Function call is valid under a function main or any other</li>
  <li>Control statements like I and else and while are supported</li>
  <li>Nested if and else are not supported.</li> 
</ul>

##### Output
Two files are created  Lexer.txt and Parser>txt .
Lexer.txt is usesd to print the tokens types along with their values.
For Example:  int i = 2 + 3;
Output :<br>
&emsp;TYPE : int<br>
&emsp;ID : i<br>
&emsp;ASSIGN : = <br>
&emsp;NUM : 2<br>
&emsp;PLUS : +<br>
&emsp;NUM : 3<br>
&emsp;SEMI : ;<br>
<br>
In parser.txt the function declartion ,argument declartion  and function call are shown .
It will stop printing the output when it encounter an error and the text Syntax Error wiil be displayed on your terminal.<br>
Example:<br>
&emsp;Datatype : int<br>
&emsp;Varibale : a <br>
&emsp;Value : 20 <br>
&emsp;Assignment : =<br>
&emsp;Datatype : int<br>
&emsp;Varibale : b <br>
&emsp;Value : 10 <br>
&emsp;Assignment : =<br><br>
This a exanple of how the parser.txt looks like.

##### Software Used
<ul>
  <li>Flex version 2.5.4</li>
  <li>Bison (GNU Bison) 2.4.1</li> 
</ul>

##### How To Run Your Files:
<ol><b> Type these in the command prompt of your Windows</b>:<br>
  <li>flex cucu.l</li>
 <li>bison -dy cucu.y</li>
 <li> bison -d -o cucu.tab.c cucu.y  (To create the cucu.tab.h , cucu.tab.c)</li>
 <li>gcc lex.yy.c y.tab.c</li>
 <li>a.exe</li>

</ol>




