*** Settings ***

*** Comments ***
Construa um algoritmo que contenha o nome de um aluno, disciplina, quatro notas e exiba na tela a média delas. 


*** Variables ***
${NOME}	Alexandre
${DISC}		Math
@{NOTAS}	10	9	2	7
*** Keywords ***

*** Test Cases ***
Teste 3
	${sum}	set variable	${${NOTAS}[0]+${NOTAS}[1]+${NOTAS}[2]+${NOTAS}[3]}

	${media}	set variable	${${sum}/4}
	log to console	\nNome: ${NOME}
	log to console	\nDisciplina: ${DISC}
	log to console	\nMedia: ${media}
