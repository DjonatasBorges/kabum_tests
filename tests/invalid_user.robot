*** Settings ***
Resource            ../resources/resource.robot
Resource            ../resources/pom/login.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Cenário: Erro ao tentar efetuar login com usuárioe/ou senha inválidos
    Dado que esteja na página de login
    Quando tentar efetuar um login com usuário e/ou senha inválidos
    Entao uma mensagem "Dados inválidos, tente novamente!" é apresentada ao usuário