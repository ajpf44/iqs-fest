*** Settings ***

*** Comments ***
Calcule a área e o preço de um terreno 

    area = largura x comprimento 

    preco = área x preco do metro quadrado 

*** Variables ***
${LARG}	10
${COMP}	20
${PRECO_METRO_QUADRADO}	400
*** Keywords ***

*** Test Cases ***
exercicio 8
	${area}	set variable	${${LARG} * ${COMP}}
	${preco}	set variable	${${area}*${PRECO_METRO_QUADRADO}}
	log to console	\nÁrea: ${area}
	log to console	\nPreço: ${preco}


