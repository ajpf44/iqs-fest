*** Settings ***

*** Comments ***
11) A partir de um número retorne como resposta se ele é positivo, negativo ou zero. 

*** Variables ***
${NUM}	${-10}
*** Keywords ***

*** Test Cases ***
exercicio 11
	IF	${NUM} == ${0}
		log to console	\nO número é zero
	ELSE IF	${NUM} > 0
		log to console	\nO número é maior que zero
	ELSE
		log to console	\nO número é menor que zero
	END

