*** Settings ***
Library	SeleniumLibrary

Test Setup	Open Browser	url=${SITE_URL}		browser=${BROWSER}

Test Teardown	Close Browser

*** Comments ***

*** Variables ***
${SITE_URL}	https://www.saucedemo.com/v1/
${BROWSER}	firefox
@{ALPHABETIC_ORDER}    Sauce Labs Backpack
...                    Sauce Labs Bike Light
...                    Sauce Labs Bolt T-Shirt
...                    Sauce Labs Fleece Jacket
...                    Sauce Labs Onesie
...                    Test.allTheThings() T-Shirt (Red)

&{PRODUCT_BUTTONS}
...		backpack=xpath://div[@class='inventory_item_name'][contains(text(), 'Backpack')]/../../..//button
...		bike_light=xpath://div[@class='inventory_item_name'][contains(text(), 'Bike Light')]/../../..//button
...		bolt_tshirt=xpath://div[@class='inventory_item_name'][contains(text(), 'Bolt T-Shirt')]/../../..//button
...		red_tshirt=xpath://div[@class='inventory_item_name'][contains(text(), 'T-Shirt (Red)')]/../../..//button
...		cart_badge_num=xpath://span[@class='fa-layers-counter shopping_cart_badge']
&{LOGIN_PAGE_DATA}
...		user_input=standard_user
...		password_input=secret_sauce
&{LOGIN_PAGE_EL}	
...		user_input=id:user-name
...		password_input=id:password
...		login_button=id:login-button

*** Keywords ***

##	Ações	##
Realizar login com ${user} e ${pswd}
	Wait Until Element Is Visible	locator=${LOGIN_PAGE_EL.user_input}	
	Input Text		locator=${LOGIN_PAGE_EL.user_input}	text=${user}
	Wait Until Element Is Visible	locator=${LOGIN_PAGE_EL.user_input}	
	Input Text		locator=${LOGIN_PAGE_EL.password_input}	text=${pswd}
	Wait Until Element Is Enabled	locator=${LOGIN_PAGE_EL.login_button}	
	Click Element	locator=${LOGIN_PAGE_EL.login_button}

Adicionar item de ${button} ao carrinho
	Wait Until Element Is Visible	locator=${button}	
	Click Element	locator=${button}

Selecionar opção ${button} do filtro
	Click Element	locator=//select
	Click Element	locator=${button}


##	Verificações	##
Verifica tem ${n} itens no carrinho
	${count_items_cart}	Get Text	locator=${PRODUCT_BUTTONS.cart_badge_num}
	${count_items_cart}  Convert To Integer  ${count_items_cart}
	${expected_items_cart}	Set Variable	${n}
	Should Be Equal	first=${count_items_cart}	second=${expected_items_cart}

Verifica os nomes dos produtos em ordem a-z
	Wait Until Element Is Visible    //div[@class='inventory_item_name']
	${elements}    Get WebElements    //div[@class='inventory_item_name']
	${number_of_elements}    Get Length    ${elements}
	FOR    ${index}    IN RANGE    0    ${number_of_elements}
		${prod_name}    Get Text    ${elements}[${index}]
		Should Be Equal    ${prod_name}    ${ALPHABETIC_ORDER}[${index}]
	END

*** Test Cases ***
Cenário 1: Adicionar vários itens ao carrinho
	Realizar login com ${LOGIN_PAGE_DATA.user_input} e ${LOGIN_PAGE_DATA.password_input}
	Adicionar item de ${PRODUCT_BUTTONS.red_tshirt} ao carrinho
	Adicionar item de ${PRODUCT_BUTTONS.bike_light} ao carrinho
	Adicionar item de ${PRODUCT_BUTTONS.bolt_tshirt} ao carrinho

	Verifica tem ${3} itens no carrinho

Cenário 2: Ordenar produtos por nome (A a Z)
	
	Realizar login com ${LOGIN_PAGE_DATA.user_input} e ${LOGIN_PAGE_DATA.password_input}
	${button}	set variable	xpath://option[@value='az']
	Selecionar opção ${button} do filtro
	Verifica os nomes dos produtos em ordem a-z

