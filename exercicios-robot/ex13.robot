*** Settings ***

*** Comments ***
Escreva um programa que encontre o valor máximo entre 2 números 

Exemplo: 
Entrada: 

número1: 5 
número2: 3

Saída: 
O número 5 é maior que o número 3

*** Variables ***
${NUM1}	10
${NUM2}	30
*** Keywords ***

*** Test Cases ***
exercicio 13
	IF	${NUM1} > ${NUM2}
		log to console	\n${NUM1}
	ELSE
		log to console	\n${NUM2}
	END



