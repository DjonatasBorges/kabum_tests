*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/resource.robot

*** Variables ***
${login_url}                ${base_url}login
${input_user}               id=inputUsuarioLogin
${input_password}           id=inputSenhaLogin
${btn_enter}                id=botaoLogin
${msg_login_failed}         xpath=//*[@id="formLogin"]/div[1]/div[2]/div/div[2]

*** Keywords ***

Dado que esteja na página de login
    Go To    ${login_url}

Quando tentar efetuar um login com usuário e/ou senha inválidos
    Wait Until Element Is Visible   locator=${input_user}
    Input Text                      locator=${input_user}       text=37839418813    clear=True
    Input Text                      locator=${input_password}   text=asdf           clear=True
    Click Button                    locator=${btn_enter}

Entao uma mensagem "${msg}" é apresentada ao usuário
    Wait Until Element Is Visible   ${msg_login_failed}
    Element Text Should Be          ${msg_login_failed}   ${msg}