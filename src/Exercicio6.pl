/* professor(1 = nome do professor, 2 = nome da materia) */
professor(julia, direito).
professor(leandro, historia).
professor(pedro, letras).
professor(raquel, letras).
professor(marcos, psicologia).

/* area_materia(1 = nome do professor, 2 = nome do tipo da materia)
   Essa regra ver a materia que o professor leciona, e retorna o tipo de materia que o professor leciona */
area_materia(X, sociais) :- professor(X, direito).
area_materia(X, sociais) :- professor(X, historia).
area_materia(X, humanas) :- professor(X, letras).
area_materia(X, humanas) :- professor(X, psicologia).

/* alunos(1 = nome do aluno, 2 = nome da professor) */
alunos(juca, julia).
alunos(juca, leandro).
alunos(laura, julia).
alunos(laura, raquel).
alunos(luis, marcos).
alunos(luis, pedro).

/* professor_sociais(1 = nome do professor) 
   Essa regra retorna todos os professores que leciona alguma materia recionado a "Sociais" */
professor_sociais(X) :- area_materia(X, sociais).

/* professor_sociais(1 = nome do professor) 
   Essa regra retorna todos os professores que leciona alguma materia recionado a "humanas" */
professor_humanas(X) :- area_materia(X, humanas).

diciplinas_cursadas_sociais(X) :- professor_sociais(Y), alunos(X, Y), professor_sociais(Z), alunos(X, Z), Y = julia, Z = leandro.
diciplinas_cursadas_humanas(X) :- professor_humanas(Y), alunos(X, Y).