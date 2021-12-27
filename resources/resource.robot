*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${base_url}     https://www.kabum.com.br/

*** Keywords ***
Abrir navegador
    Open Browser                browser=googlechrome
    Maximize Browser Window
    Go To                       ${base_url}

Fechar navegador
    Close Browser
