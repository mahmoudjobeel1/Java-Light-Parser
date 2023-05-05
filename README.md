# Definite Clause Grammar Parser for Java-Light in Prolog

This project implements a parser for a definite clause grammar (DCG) of Java-Light in Prolog. Java-Light is a subset of Java that consists of semi-colon-separated sequences of simple assignment statements, conditional statements, and loops. The grammar contains no epsilon rules and has the symbol `s` as its start variable.

The parser takes a sequence of tokens as input and returns a parse tree that represents the input in terms of the grammar rules. The output is a Prolog term that can be further processed or queried for information.

The parser is implemented in the `46_18406.pl` file, which contains the grammar rules and predicates for parsing different types of statements. The file also includes examples of how to use the parser with sample inputs.

## Grammar Rules

The grammar rules of our programming language can be defined as follows:

- `s(Tree)` represents a program, which consists of either an assignment or a conditional statement.
- `conditional(if_else(If, Else))` represents an if-else statement, where `If` is the condition to be evaluated and `Else` is the body of the else block. The if block is represented by the `if` rule.
- `conditional(if(If))` represents an if statement, where `If` is the condition to be evaluated.
- `conditional(while(While,Body))` represents a while loop, where `While` is the condition to be evaluated and `Body` is the body of the loop.
- `if_statement((Expr, Body))` represents an if or if-else block header, where `Expr` is the boolean expression to be evaluated and `Body` is the block body.
- `boolean(boolean(Left,Op,Right))` represents a boolean expression, where `Left` and `Right` are arithmetic expressions and `Op` is a comparison operator.
- `assignment(assign(Id, Expr, End))` represents an assignment statement, where `Id` is the identifier of the variable being assigned, `Expr` is the expression being assigned to it, and `End` is the semicolon that terminates the statement. A version with a body is also defined as `assignment(assign(Id, Expr, End, Body))`.
- `identifier_tail([Char|Tail])` represents the tail of an identifier, which is either a digit, an alphabetic character, an underscore, or a dollar sign.
- `identifier_tail([])` represents the end of an identifier.
- `identifier(id(X))` represents an identifier, which starts with a letter, underscore or dollar sign, and is followed by zero or more characters that are digits, letters, underscores or dollar signs.
- `expr(expr(Term))` represents an arithmetic expression, which consists of either a single term or a term followed by an operator and another expression.
- `term(term(Factor))` represents a term, which consists of either a single factor or a factor followed by an operator and another term.
- `factor(factor(Num))` represents a numeric literal.
- `factor(factor(Id))` represents an identifier.
- `factor(factor(Expr))` represents an arithmetic expression enclosed in parentheses.
- `operator(add)` represents an addition operator.
- `operator(sub)` represents a subtraction operator.
- `operator(mul)` represents a multiplication operator.
- `operator(div)` represents a division operator.
- `operator(mod)` represents a modulus operator.
- `operator_Compare(equal)` represents an equal-to comparison operator.
- `operator_Compare(inequality)` represents a not-equal-to comparison operator.
- `operator_Compare(less_equal)` represents a less
- `operator_Compare(less)` represents a less-than comparison operator.
- `operator_Compare(greater_equal)` represents a greater-than-or-equal-to comparison operator.
- `operator_Compare(greater)` represents a greater-than comparison operator.
- `semi_colon(end)` represents a semicolon that terminates a statement.
- `num(num(X))` represents a numeric literal. 


## Prolog Parser Tests
This repository contains tests for a Prolog parser implemented in the `tests.pl` file.

## Example Test
- Input:
s(T, [if,'(','T',o,t,a,l,<,500,')','T',o,t,a,l,=,'T',o,t,a,l,+,150,;,else,if,'(',x,'!=','T',o,t,a,l,')','T',o,t,a,l,=,0,;,else,x,=,55,/,y,-,15,;] ,[]).

- Output:
T = if_else((boolean(expr(term(factor(id(['T', o|...])))), less, expr(term(factor(num(500))))), assign(id(['T', o, t, a, l]), expr(term(factor(id(['T', o|...])), add, term(factor(num(150))))), end)), if_else((boolean(expr(term(factor(id([x])))), inequality, expr(term(factor(id(['T'|...]))))), assign(id(['T', o, t, a|...]), expr(term(factor(num(0)))), end)), assign(id([x]), expr(term(factor(num(55)), div, term(factor(id([y])), sub, term(factor(num(15)))))), end))) .

