*** Settings ***

*** Variables ***
${VAR1}	10
${VAR2}	20
*** Keywords ***

*** Test Cases ***
Teste 1
	log to console	\n${${VAR1}+${VAR2}}

