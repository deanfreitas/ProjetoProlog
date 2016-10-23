/* nasceu_em(1 = nome da pessoa, 2 = onde ela nasceu) */
nasceu_em(andre, santa_maria).
nasceu_em(jose, salvador).
nasceu_em(marc, paris).
nasceu_em(maria, porto_alegre).
nasceu_em(joana, salvador).
nasceu_em(michel, paris).

/* nasceu_em(1 = nome da pessoa, 2 = Estado onde essa pessoa nasceu) 
   Essa regra diz que se a pessoa que nasceu na cidade(Correspondente), 
   mostra de que estado ela nasceu */
nasceu_em(X, rio_grande_do_sul) :- nasceu_em(X, santa_maria). 
nasceu_em(X, rio_grande_do_sul) :- nasceu_em(X, porto_alegre).
nasceu_em(X, bahia) :- nasceu_em(X, salvador).
nasceu_em(X, franca) :- nasceu_em(X, paris).
nasceu_em(X, europa) :- nasceu_em(X, franca). 
nasceu_em(X, brasil) :- nasceu_em(X, bahia). 
nasceu_em(X, brasil) :- nasceu_em(X, rio_grande_do_sul). 

/* idade(1 = nome da pessoa, 2 = idade da pessoa) */
idade(andre, 25). 
idade(jose, 30). 
idade(marc, 28). 
idade(maria, 32). 
idade(joana, 22). 
idade(michel, 40). 

gaucho(X) :- nasceu_em(X, rio_grande_do_sul).
brasileiro(X) :- nasceu_em(X, brasil).
europeu(X) :- nasceu_em(X, europa).

ola :- read(X), write("Olá "), write(X). 