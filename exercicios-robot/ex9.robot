*** Settings ***

*** Comments ***
9) Fazer um algoritmo que a partir da distância percorrida em km e o total gasto de combustível, no final  exiba o consumo médio do carro. 
*** Variables ***
${DIST_KM}	90
${TOTAL_GASTO_REAIS}	50

*** Keywords ***

*** Test Cases ***
exercicio 9
	${consumo_medio}	set variable	${${TOTAL_GASTO_REAIS}/${DIST_KM}}
	log to console	\nConsumo Médio: ${consumo_medio} / km


