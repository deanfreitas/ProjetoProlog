/* aluno(1 = nome do aluno, 2 = materia do aluno) */

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).

/* frequenta(1 = nome da pessoa que frequenta a universidade, 
   2 = nome da universidade) */
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).

/* professor(1 = nome do professor, 2 = materia que o professor leciona) */
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).

/* funcionario(1 = nome do funcionario do universidade, 2 = nome da universidade) */
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).

/* professor_aluno(1 = nome do professor, 2 = nome do aluno) 
   Essa regra verifica se o professor dar aulas para o aluno, atraves da materia em comum*/
professor_aluno(X, Y) :- professor(X, Z), aluno(Y, Z).

associado_universidade(X, Y) :- frequenta(Y, X).
associado_universidade(X, Y) :- funcionario(Y, X).