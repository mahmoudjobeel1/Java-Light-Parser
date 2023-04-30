s(Tree,[r, u, n, =, 2, *, r, u, n, +, 1, ;],[]).  %True

s(Tree,[r, u, n,'1', =, 2, *, r, u, n, +, 1, ;],[]). %True

s(Tree,['_',r, u, n, =, 2, *, r, u, n, +, 1, ;],[]). %True

s(Tree,['1' ,=, 2, *, r, u, n, +, 1, ;],[]). %false 

boolean(Tree,['(' , 'C', o, m, p, i, l, e, r, >, o, t, h, e, r, s, ')'],[]). %False

boolean(Tree,['C', o, m, p, i, l, e, r, >, o, t, h, e, r, s],[]). %True

boolean(Tree,[r, u, n, <=, w, -, 1],[]). %True

boolean(Tree,[r, u, n, <=, '_',w, -, 1],[]). %True