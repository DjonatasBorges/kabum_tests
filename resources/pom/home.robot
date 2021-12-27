*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/resource.robot

*** Variables ***
${input_search}             id=input-busca
${msg_result_search}        css=#listingBreadcrumbs > div
${btn_search}               css=#barraBuscaKabum > div > form > button
${btn_all_departament}      partial link=
${btn_game}                 css=a[href='https://www.kabum.com.br/gamer']
${add_to_cart}              xpath=//button[normalize-space()='COMPRAR']//*[name()='svg']
${msg_add_to_cart}          css=div[class='sc-lbhJGD eDxwLC'] strong
${go_to_cart}                xpath=//button[normalize-space()='IR PARA O CARRINHO']
${iframe_cookies}           css=#ilabspush-cookies
${accept_cookies}           id=onetrust-accept-btn-handler


*** Keywords ***
Dado estar na página inicial do site
    Go To                                ${base_url}
    Execute Javascript                  code=document.querySelector("#onetrust-accept-btn-handler").click()

Quando efetuar uma busca por "${product}"
    Wait Until Element Is Visible   locator=${input_search}
    Input Text                      locator=${input_search}       text=${product}
    Click Button                    locator=${btn_search}

Entao deverá visualizar - Você está em: "${confirm_search}"
    Wait Until Element Is Visible   ${msg_result_search}
    Element Text Should Be          ${msg_result_search}   ${confirm_search}

Quando entrar em Departamentos - Games - Jogos - XBox One
    Go To                               ${base_url}gamer
    Wait Until Element Is Visible       css=#blocoCategoriasListagem > div:nth-child(5) > a
    Click Link                          css=#blocoCategoriasListagem > div:nth-child(5) > a
    Wait Until Element Is Visible       css=#blocoCategoriasListagem > div > a
    Click Element                       css=#blocoCategoriasListagem > div > a

E clicar no jogo "${game_name}"
    Click Element     partial link=${game_name}

E adiconar o produto no carrinho
    Set Browser Implicit Wait    2
    Click Element    ${add_to_cart}

Entao o usuário receberá a mensagem "${confirmed_add_to_cart}"
    Wait Until Element Is Visible   ${msg_add_to_cart}
    Element Text Should Be          ${msg_add_to_cart}   ${confirmed_add_to_cart}

Quando entrar no carrinho
    Wait Until Element Is Visible   ${go_to_cart}
    Click Element                   ${go_to_cart}

Entao o jogo "${game_name}" estará na página do carrinho
    Wait Until Element Is Visible   partial link=${game_name}
    Element Text Should Be          partial link=${game_name}   ${game_name}