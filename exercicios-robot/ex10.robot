*** Settings ***

*** Comments ***
10) Criar um algoritmo que a partir de um tempo em segundos e imprima no console no seguinte   
formato:   hora:minuto:segundos
*** Variables ***
${SECS}	364
*** Keywords ***

*** Test Cases ***
exercicio 10
	${div}	set variable	${${SECS}//60}
	${hora}	set variable	${${div}//60}
	${min}	set variable	${${div}%60}
	${sec}	set variable	${${SECS}%60}

	log to console	\n${hora}:${min}:${sec}


