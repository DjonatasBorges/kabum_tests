*** Settings ***
Resource            ../resources/resource.robot
Resource            ../resources/pom/home.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Cenário: Busca de produtos
    Dado estar na página inicial do site
    Quando entrar em Departamentos - Games - Jogos - XBox One
    E clicar no jogo "Jogo Dark Alliance - Xbox"
    E adiconar o produto no carrinho
    Entao o usuário receberá a mensagem "PRODUTO ADICIONADO NO CARRINHO"
    Quando entrar no carrinho
    Entao o jogo "Jogo Dark Alliance - Xbox" estará na página do carrinho