/* cubo_numero(1 = numero que vai ser calculado o cubo) 
   Essa regra recebe um numero, e retorna o cubo desse numero */
cubo_numero(X) :- Y is  X * X * X, write("O cubo de "), write(X), write(": "), write(Y).

/* maior_numero(1 = primeiro n�mero, 2 = segundo n�mero)
   Essa regra recebe dois n�meros e retorna o maior deles */
maior_numero(X, Y) :- X < Y, write("O maior n�mero: "), write(Y); Y < X, write("O maior n�mero: "), write(X).

numeros_naturais(X, Y) :- Z is X + Y, write("A soma dos n�meros naturais: "), write(Z).

/* Fatorial */
fatorial(0, 1).
fatorial(N, F) :- N1 is N - 1, fatorial(N1, F1), F is N * F1.

numero_primo(1).
numero_primo(X, Y) :- Y > 1, Z is X - 1, numero_primo(Z, A), A is Y mod A.