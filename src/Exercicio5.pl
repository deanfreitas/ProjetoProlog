/* filme(1 = nome do filme, 2 = genero do filme, 3 = diretor do filme, 
   4 = ano do filme, 5 = minutos do filme) */
filme(amnesia, suspense, nolan, 2000, 113).
filme(babel, drama, inarritu, 2006, 142).
filme(capote, drama, miller, 2005, 98).
filme(casablanca, romance, curtiz, 1942, 102).
filme(matrix, ficcao, wachowsk, 1999, 136).
filme(rebeca, suspense, hitchcock, 1940, 130).
filme(shrek, aventura, adamson, 2001, 90).
filme(sinais, ficcao, shymalan, 2002, 106).
filme(spartacus, acao, kubrik, 1960, 184).
filme(superman, aventura, donner, 1978, 143).
filme(titanic, romance, cameron, 1997, 194).
filme(tubarao, suspense, spielberg, 1975, 124).
filme(volve, drama, almodovar, 2006, 121).

/* Pergunta 1 => Quem dirigiu o filme Titanic ? 
   filme(titanic, _, Z, _, _)  */
   
/* Pergunta 2 => Quais são os filmes de suspense ?
   filme(X, suspense, _, _, _) */
   
/* Pergunta 3 => Quais os filmes dirigidos por Donner ?
   filme(X, _, donner, _, _). */
   
/* Pergunta 4 => Em que ano foi lançado o filme Sinais ?
   filme(sinais, _, _, X, _) */
   
/* Pergunta 5 => Quais os filmes com duração inferior a 100min ?
   filme(X, _, _, _, Y), Y > 100 */
   
/* Pergunta 6 => Quais os filmes lançados entre 2000 e 2005 ?
   filme(X, _, _, Y, _), Y > 2000, Y < 2005 */ 

/* classico(1 = nome do filme) 
   Essa regra retorna os filmes que foram lançados antes que 1980 */
classico(X) :- filme(X, _, _, Y, _), Y < 1980.

/* genero(1 = genero do filme, 2 = nome do filme) 
   Essa regra retorna os filmes com o genero especifico(que é fornecido pelo usuario)*/
genero(Y, X) :- filme(X, Y, _, _, _).

/* filmes(1 = nome do filme, 2 = genero do filme) 
   Essa regra retorna o nome dos fimes de um determinado genero, que foi lançado antes de 1980 */
filmes(X, Y) :- genero(Y, X), classico(X).
   