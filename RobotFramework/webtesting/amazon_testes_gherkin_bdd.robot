*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resource.robot
Task Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Mais vendidos"
    [Documentation]    Esse teste verifica  menu mais vendidos do site Amazon.com.br
    ...                e verifica a categoria CD e Vinil
    [Tags]             Menus    categorias

    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Mais vendidos"
    Então o título da página deve ficar "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    E o texto "Mais vendidos" deve ser exibido na página
    E a categoria "CD e Vinil" deve ser exibida na página
    Quando pesquisar pelo produto "CD e Vinil"
    O produto "Construção" deve ser mostrado na página
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Quando remover o produto "Construção" do carrinho
    

    


    