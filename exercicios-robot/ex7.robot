*** Settings ***

*** Variables ***
${NUM1}	10
${NUM2}	2

*** Keywords ***

*** Comments ***
#Criar um algoritmo que a partir de dois números inteiros imprima a seguinte saída: 

#Dividendo, Divisor, Quociente e Resto
*** Test Cases ***
exercicio 7
	log to console	\n${NUM1}, ${NUM2}, ${${NUM1} / ${NUM2}}, ${${NUM1}%${NUM2}} 



