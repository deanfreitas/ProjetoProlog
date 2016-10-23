/* Todas as caracteristicas das pessoas */
mulher(cassia).
bonita(cassia).
homem(marcos).
bonito(marcos).
rico(marcos).
mulher(ana).
rica(ana).
forte(ana).
homem(fabiano).
forte(fabiano).
bonito(fabiano).
homem(silvio).
amavel(silvio).
forte(silvio).

/* gosta(1 = nome do homem, 2 = nome da mulher) 
   Essa regra estabelhece que qualquer homem(todos), gosta de mulheres, só se for bonitas */
gosta(X, Y) :- homem(X), mulher(Y), bonita(Y).

/* feliz(1 = nome do homem) 
   Essa regra estabelhece que homem só e feliz, apenas se for rico */
feliz(X) :- homem(X), rico(X).

/* feliz(1 = nome do homem)
   Essa regra estabelhece que homem só é feliz se ele gostar da mulher que gosta dele */
feliz(X) :- homem(X), gosta(X, Y), gosta(Y, X), mulher(Y).

/* feliz(1 = nome da mulher) 
   Essa regra estabelhece que a mulher só é feliz se ela gostar de alguem que gosta dela */
feliz(X) :- mulher(X), gosta(X, Y), gosta(Y, X), homem(Y).

/* gosta(ana, 1 = nome do homem)
   Essa regra estabelhece que ana gosta do homem que gosta dela */
gosta(ana, X) :- homem(X), gosta(X, ana).

/* gosta(cassia, 1 = nome do homem) 
   Essa regra estabelhece que cassia gosta do homem que gosta dela, e tem que ser rico e amavel, 
   ou bonito e forte */
gosta(cassia, X) :- homem(X), gosta(X, cassia), rico(X), amavel(X).
gosta(cassia, X) :- homem(X), gosta(X, cassia), bonito(X), forte(X).