*** Settings ***
Resource            ../resources/resource.robot
Resource            ../resources/pom/home.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Cenário: Busca de produtos
    Dado estar na página inicial do site
    Quando efetuar uma busca por "iphone"
    Entao deverá visualizar - Você está em: "Celular & Telefone > Smartphones > Apple"