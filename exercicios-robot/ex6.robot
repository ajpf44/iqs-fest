*** Settings ***

***	Comments ***
6) Escreva um programa que receba a temperatura em Celsius e retorne o valor em Fahrenheit 
*** Variables ***
${CELSIUS}	0
*** Keywords ***

*** Test Cases ***
exercicio 6
	${fahren}	set variable	${${CELSIUS} * 1.8 + 32}
	log to console	\nTemp em Fahrenheit: ${fahren}
	


