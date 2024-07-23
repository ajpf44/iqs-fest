*** Settings ***

***	Comments ***
Uma empresa paga R$10.00 por hora normal trabalhada e R$ 15.00 por hora extra. Escreva um algoritmo que a partir de um total de horas normais trabalhadas e um total de horas extras trabalhadas por um empregado em um ano calcule o salário anual deste trabalhador. 
*** Variables ***
${VALOR_NORMAL}	10
${VALOR_EXTRA}	15
*** Keywords ***

*** Test Cases ***
exercicio 5
	${trabalhadas_normal}	set variable	40
	${trabalhadas_extra}	set variable	10
	${salario}	set variable	${${trabalhadas_normal}*${VALOR_NORMAL} + ${trabalhadas_extra}*${VALOR_EXTRA}}
	log to console	\nSalário:${salario}

