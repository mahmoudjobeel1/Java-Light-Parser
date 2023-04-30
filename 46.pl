% Define grammar rules
s(Tree) --> assignment(Tree), eos.

assignment(assign(Id, Expr,End)) --> identifier(Id), ['='], expr(Expr),semi_colon(End).


identifier(id(X)) --> [First], { code_type(First, alpha) ; First = '_'}, identifier_tail(Tail), { atom_chars(X, [First|Tail]) }.
identifier_tail([Char|Tail]) --> [Char], { code_type(Char, alnum) ; Char = '_' }, identifier_tail(Tail).
identifier_tail([]) --> [].

expr(expr(Term)) --> term(Term).
expr(expr(Left, Op, Right)) --> term(Left), operator(Op), expr(Right).

term(term(Factor)) --> factor(Factor).
term(term(Left, Op, Right)) --> factor(Left), operator(Op), term(Right).

factor(factor(Num)) --> num(Num).
factor(factor(Id)) --> identifier(Id).
factor(factor(Expr)) --> ['('], expr(Expr), [')'].

operator(add) --> ['+'].
operator(sub) --> ['-'].
operator(mul) --> ['*'].
operator(div) --> ['/'].
operator(mod) --> ['%'].

semi_colon(end) -->[';'].

num(num(X)) --> [X], {number(X)}.

eos --> [].














