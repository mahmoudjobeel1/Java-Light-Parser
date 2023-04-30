s(Tree,[r, u, n, =, 2, *, r, u, n, +, 1, ;],[]).  %True

s(Tree,[r, u, n,'1', =, 2, *, r, u, n, +, 1, ;],[]). %True

s(Tree,['_',r, u, n, =, 2, *, r, u, n, +, 1, ;],[]). %True

s(Tree,['1' ,=, 2, *, r, u, n, +, 1, ;],[]). %false 

boolean(Tree,['(' , 'C', o, m, p, i, l, e, r, >, o, t, h, e, r, s, ')'],[]). %False

boolean(Tree,['C', o, m, p, i, l, e, r, >, o, t, h, e, r, s],[]). %True

boolean(Tree,[r, u, n, <=, w, -, 1],[]). %True

boolean(Tree,[r, u, n, <=, '_',w, -, 1],[]). %True

s(T, [if, '(' , 'C', o, m, p, i, l, e, r, >, o, t, h, e, r, s, ')', a, l, l, =, 1, ;], []). %True

s(T,[if, '(', 'T', o, t, a, l, <, 500, ')', 'T', o, t, a, l, =, 'T', o, t, a, l, +, 150, ;, else, if, '(', x, '!=', 'T', o, t, a, l, ')', 'T', o, t, a, l, =, 0, ;, else, x, =, 55, /, y, -, 15, ;],[]). %True

s(T, [if, '(', x, >, 0, ')', x, =, x, -, 1], []).