% Define grammar rules
s(Tree) --> (assignment(Tree); conditional(Tree)), eos.


conditional(if_else(If, Else)) --> if_statement(If), ['else'], s(Else).
conditional(if(If)) --> if_statement(If).
conditional(while(While,Body)) --> ['while'], ['('], boolean(While), [')'], s(Body).

if_statement((Expr, Body)) --> ['if'], ['('], boolean(Expr), [')'], s(Body).

boolean(boolean(Left,Op,Right)) --> expr(Left), operator_Compare(Op),expr(Right).

assignment(assign(Id, Expr,End)) --> identifier(Id), ['='], expr(Expr),semi_colon(End).
assignment(assign(Id, Expr,End,Body)) --> identifier(Id), ['='], expr(Expr),semi_colon(End),s(Body).

identifier(id(X)) -->
    [First], { catch(code_type(First, alpha), _, fail) ; First = '_'},
    identifier_tail(Tail),
    { atom_chars(X, [First|Tail]) }.

identifier_tail([Char|Tail]) -->
    [Char], { catch(code_type(Char, alnum), _, fail) ; Char = '_' },
    identifier_tail(Tail).
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

operator_Compare(equal) --> ['=='].
operator_Compare(inequality) --> ['!='].
operator_Compare(less_equal) --> ['<='].
operator_Compare(less) --> ['<'].
operator_Compare(greater_equal) --> ['>='].
operator_Compare(greater) --> ['>'].

semi_colon(end) -->[';'].

num(num(X)) --> [X], {number(X)}.

eos --> [].