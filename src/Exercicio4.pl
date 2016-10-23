/* aluno_nota(1 = nome do aluno, 2 = nota do aluno) */
aluno_nota(joao, 5.0).
aluno_nota(maria, 6.0).
aluno_nota(joana, 8.0).
aluno_nota(mariana, 9.0).
aluno_nota(cleuza, 8.5).
aluno_nota(jose, 6.5).
aluno_nota(jaoquim, 4.5).
aluno_nota(mara, 4.0).
aluno_nota(mary, 10.0).

/* situacao_aluno(1 = nome do aluno, 2 = nota do aluno, 3 = situação do aluno) 
   Essa regra verifica a nota do aluno, e retorna a situação dele*/
situacao_aluno(X, Y, Z) :- aluno_nota(X, Y), Y > 7, Z = "Aprovado".
situacao_aluno(X, Y, Z) :- aluno_nota(X, Y), 5 < Y, Y < 6.9, Z = "Recuperação".
situacao_aluno(X, Y, Z) :- aluno_nota(X, Y), Y < 4.9, Z = "Reprovado".