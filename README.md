    <h1>Perguntas e respostas do Teste</h1>

<p><b>1 - Defina os 3 tipos de testes citados abaixo.</b><br>
    * Teste unitário<br>
    * Teste de Integração<br>
    * Teste de UI<br>
    O <b>Teste Unitário</b> é uma verificação feita em uma pequena parte do código e/ou sistema. Tem como objetivo encontrar
falhas nessas pequenas partes.<br>
    O <b>Teste de Integração</b> é a fase do teste de software em que módulos são combinados e testados em grupo. Ele valida a
comunicação entre os componentes do sistema.<br>
 <b>Teste unitário e Teste de integração são feitos pelos desenvolvedores</b><br>
    O **Teste de UI** seria o teste da interface do usuário. Irá testar o sistema e sua interface, garantindo um bom
funcionamento e aceitação ao pedido do cliente.<br>
    **Teste de UI é feito pela equipe de QA.**<br>
Ou seja, é diferente do teste geral, que se dedica a atestar o fluxo do sistema, com as funcionalidades principais.</p><br><br>

<p>2 - Analise e descreva qual a importância da qualidade de software hoje. E quais os riscos sem ela dentro de um e-commerce.<br>
    O teste de software é importante na qualidade do sistema pois garante que o mesmo atenda todos requisitos informados
pelo cliente. Os testes também tem grande importância na redução de custos financeiros, tanto pelo fato de evitar
problemas futuros, quanto na reputação do sistema e consequentemente da empresa.<br>
    Ná área do e-commerce não é diferente. O Teste faz com que os usuários tenham uma boa experiência ao comprar, e também
tenha uma segurança maior ao disponibilizar seus dados pessoais e alguns financeiros. Sendo assim o teste evita a má experiência
e a falta de segurança ao executar compras.</p><br><br>

<p>3 - Passe o método “Passo a Passo”, para o método escrito na linguagem Gherkin:<br>
    Cenário - Busca por produto<br>
    1ª - Abrir a home do site<br>
    2ª - Digitar “Processador i9” na busca e clicar em pesquisar.<br>
    3ª - Validar se existe produto na listagem<br><br>
    Gherkin<br><br>
    Dado que esteja na homepage do site
    Quando fazer uma busca pelo produto "Processador i9"
    Entao deverei visualizar o produto "Processador i9" na página de resultado</p>

<p>4 - Descreva a respeito de TDD(Test Driven Development) e BDD(Behavior Driven Development) e suas diferenças:<br>
    TDD é o Desenvolvimento Orientado por Testes (Test Driven Development). Desenvolve-se o software baseado em testes
que são escritos antes mesmo de codificar.
Baseia-se em pequenos ciclos de repetições, onde para cada funcionalidade do sistema um teste é criado antes. Após
criamos/codificamos a função para que o teste passe.<br>
    BDD(Behavior Driven Development) é uma técnica de desenvolvimento Ágil que encoraja colaboração entre desenvolvedores,
setores de qualidade e pessoas não-técnicas ou de negócios num projeto de software. Os gherkins são baseados em histórias
que verificam e validam os comportamentos esperados do sistema. O Gherkin, ou histórias podem ser escritas por pessoas
não técnicas de TI, fazendo assim com quem todos possam colaborar no projeto.</p><br><br>

<p>5 - O que são Page Objects e qual sua vantagem?<br>
    O Page Object é um padrão que funciona como interface de acesso a elementos da camada de visão – para aplicações web
ele representa uma página HTML. Ele é aplicado para abstrair as páginas de uma aplicação com o objetivo de reduzir o
acoplamento entre os casos de teste e a aplicação a ser testada.
    Dando um exemplo de um site, cada página dele terá um arquivo, para que assim possamos identificar, separar e
executar métodos específicos de cada componente ou page.</p><br><br>

<p>***6 - Faça uma teste com Robot Framework, utilizando boas práticas de automação com a Library Selenium dos seguintes cenários:***<br>
- Fazer validação de um usuário inválido no https://kabum.com.br.<br>
- Fazer a busca de iphone no https://kabum.com.br. E validar retorno de produtos.<br>
- Selecione uma categoria no menu de “Departamento” e adicione um produto no
carrinho (Não precisa estar logado). E valide se o produto está no carrinho.</p><br><br>


<p>OBS:
Queria apenas informar que não tinha até a data do teste feito algum exercício com Robot, sabia apenas de forma rasa
sobre seus conceitos.
Tentei da melhor forma possível executar o teste.
Como estou acostumado com behave e selenium, sinceramente, me surpreendeu muito o poder e a simplicidade desse framework
Obrigado pela atenção e espero um até breve.</p>
