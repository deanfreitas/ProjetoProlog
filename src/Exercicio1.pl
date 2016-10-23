/* nome de todos os personagens */
passaro(joão).
peixe(pedro).
minhoca(maria).
pessoa(eu).
gato(chuck_norris).

/* gosta(1 = nome do personagem que gosta do outro, 2 = nome do personagem que o primeiro gosta) */
gosta(X, Y) :- passaro(X), minhoca(Y).
gosta(X, Y) :- gato(X), peixe(Y).
gosta(X, Y) :- gato(X), passaro(Y).

/* Essa regra mostra que à amizade entre o gato e a pessoa */
amizade_gosta(X, Y) :- gato(X), pessoa(Y).
amizade(X, Y) :- gato(X), pessoa(Y).

/* gosta(1 = O nome do personagem, 2 = nome do personagem que o 1 gosta de comer), menos pessoa */
comer(X, Y) :- gosta(X, Y), not(pessoa(X)).