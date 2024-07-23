*** Settings ***

***	Comments ***
Faça um programa com duas variáveis ano_nascimento que receberá o ano que você nasceu e outra variável com o nome ano_futuro que deverá ser atribuído o valor 2035.  Criar uma variável com o nome resultado para calcular a diferença. No final escreva na tela qual será a sua idade em 2035.
*** Variables ***
${ano_nascimento}	1999
${ano_futuro}	2030
*** Keywords ***

*** Test Cases ***
exercicio 4
	${dif}	set variable	${${ano_futuro} - ${ano_nascimento}}
	log to console	\nDiferença: ${dif}

