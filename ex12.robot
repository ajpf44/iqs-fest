*** Settings ***

*** Comments ***
Criar um algoritmo que a partir de quatro notas calcule a média. Se a média for maior que 7 deverá ser exibida a mensagem aprovado, caso contrário deverá ser exibida a mensagem reprovado.
*** Variables ***
@{NOTAS}	10	9	10	9
*** Keywords ***

*** Test Cases ***
exercicio 12
	${sum}	set variable	${0}
	FOR	${nota}	IN	@{NOTAS}
		${sum}	set variable	${${sum} + ${nota}}
	END

	${media}	set variable	${${sum}/4}
	log to console	\nMedia: ${media}

