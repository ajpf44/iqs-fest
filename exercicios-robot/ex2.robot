*** Settings ***

*** Variables ***
${NUM}	32
*** Keywords ***

*** Test Cases ***
Teste Ex2
	Log to console	\nNumero: ${${NUM}}
	Log to console	\nAntecessor: ${${NUM}-1}
	Log to console	\nSucessor: ${${NUM}+1}
