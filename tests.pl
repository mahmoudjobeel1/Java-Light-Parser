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

s(T, [if, '(', x, >, 0, ')', x, =, x, -, 1], []). %False

s(T, [v, =, 23, *, s, a, l, +, 1, a, z, ;], []). %False

s(T, [x, =, z, ;, if, '(', x, >, y, ')', x, '_', n, e, w, =, z, ;, else, x, '_', n, e, w, =, y, ;, else, y, =, z, ;], []). %False

s(T, [while,'(',r, u, n, <=, w, -, 1, ')', r, u, n, =, 2, *, r, u, n, +, 1, ;], []). %True

s(T,[r, u, n,=,0,;,while,'(',r, u, n, <=, w, -, 1, ')', r, u, n, =, 2, *, r, u, n, +, 1, ;],[]). %True

s(T, [while,'(',r, u, n, <=, w, -, 1, ')', r, u, n, =, 2, *, r, u, n, +, 1, ;,if, '(' , 'C', o, m, p, i, l, e, r, >, o, t, h, e, r, s, ')', a, l, l, =, 1, ;], []). %True

s(T, ['$','$','a', =, 1,+,2, ;] ,[]). %True

% TESTS

% SHOULD ACCEPT
s(T, [if,'(',a,<,z,')',b,=,w,;,else,m,=,1,;] ,[]).
% if(a<z)b=w;elsem=1;


s(T, [while,'(',1,>,2,')',z,=,3,;,a,=,b,;] ,[]).
% while(1>2)z=3;a=b;


s(T, [while,'(',1,>,2,')',z,=,3,;,a,=,b,;,if,'(',a,<,z,')',b,=,w,;,else,m,=,1,;] ,[]).
% while(1>2)z=3;a=b;if(a<z)b=w;else m=1;


s(T, [while,'(',1,>,2,')',z,=,3,;,a,=,b,;,if,'(',a,<,z,')',b,=,w,;] ,[]).
% while(1>2)z=3;a=b;if(a<z)b=w;


s(T, ['_','a','_', =, 1,+,2, ;] ,[]).

s(T, ['$','$','a', =, 1,+,2, ;] ,[]).

s(T, ['a','b','$','_', =, 1,+,2, ;] ,[]).


s(T, [c,o,u,n,t,e,r,1,=,c,o,u,n,t,e,r,1,+,'(',x,/,y,-,21,')','%','_',w,2,;], []).
% counter1 = counter1 + (x / y - 21) % _w2;


s(T, [c,o,u,n,t,e,r,=,x,+,y,;,while,'(',c,o,u,n,t,e,r,<=,w,-,1,')',while,'(',c,o,u,n,t,e,r,'!=',y,')',c,o,u,n,t,e,r,=,c,o,u,n,t,e,r,+,x,+,5,;,if,'(',c,o,u,n,t,e,r,>,w,+,2,')',if,'(',c,o,u,n,t,e,r,>,x,')',c,o,u,n,t,e,r,=,y,;,else,if,'(',c,o,u,n,t,e,r,>,y,')',c,o,u,n,t,e,r,=,x,;,w,=,y,/,x,;] ,[]).

% counter = x + y;
% while (counter <= w - 1)
% 	while (counter != y)
% 		counter = counter + x + 5;
% if (counter > w + 2)
% 	if (counter > x)
% 		counter = y;
% 	else
% 		if (counter > y)
% 			counter = x;
% w = y / x;



s(T, [r,u,n,=,0,;,while,'(',r,u,n,<=,w,-,1,')',r,u,n,=,2,*,r,u,n,+,1,;] ,[]).
% % run=0;while(run<=w-1)run=2*run+1;

s(T, [c,o,u,n,t,e,r,1,=,c,o,u,n,t,e,r,1,+,'(',x,/,y,-,21,')','%','_',w,2,;], []).


s(T, [if,'(','C',o,m,p,i,l,e,r,>,o,t,h,e,r,s,')',a,l,l,=,1,;] ,[]).
% % if(Compiler>others)all=1;

s(T, [while,'(',r,u,n,<=,w,-,1,')',r,u,n,=,2,*,r,u,n,+,1,;] ,[]).
% % while(run<=w-1)run=2*run+1;


s(T, [if,'(','T',o,t,a,l,<,500,')','T',o,t,a,l,=,'T',o,t,a,l,+,150,;,else,if,'(',x,'!=','T',o,t,a,l,')','T',o,t,a,l,=,0,;,else,x,=,55,/,y,-,15,;] ,[]).

% % if(Total<500)Total=Total+150;elseif(x!=Total)Total=0;elsex=55/y-15;


% % NOT ACCEPTED

s(T, [v,=,23,*,s,a,l,+,1,a,z,;], []).
% % v=23*sal+1az;

s(T, [x,=,z,;,if,'(',x,>,y,')',x,'_',n,e,w,=,z,;,else,x,'_',n,e,w,=,y,;,else,y,=,z,;] ,[]).
% % x=z;if(x>y)x_new=z;elsex_new=y;elsey=z;

s(T, [if,'(',x,>,0,')',x,=,x,-,1], []).
% % if(x>0)x=x-1

s(T, [c,o,u,n,t,e,r,1,=,1,c,o,u,n,t,e,r,+,+,x,/,y,-,21,')','%','_',w,2] ,[]).
% counter1 = 1counter ++x / y - 21) % _w2

s(T, [a, =, if, ;] ,[]).

s(T, ['a','b',';','_', =, 1,+,2, ;] ,[]).

s(T, ['a','b','!','_', =, 1,+,2, ;] ,[]).

s(T, [w,h,i,l,e,'(',1,>,2,')',z,=,3,;,a,=,b,;] ,[]).


