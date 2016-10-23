somaprodutolista :- write('Digite uma lista (entre [ , ]): '), nl,
        read(N),
        somalista(N, S),
        produto(N, P),
        writef('%w%w%w%w',['A soma dos valores da lista ', N, ' é ', S]),
        writef('%w%w%w%w',['\nO produto dos valores da lista ', N, ' é ', P]).

somalista([], 0).              
somalista([H|R], S) :- somalista(R, X), S is H + X. 

produto([], 0).
produto([X], X).
produto(L, P) :- prod(L, P).
prod([], 1).
prod([X|Y], P) :- prod(Y, Q), P is Q * X.