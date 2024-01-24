*** Settings ***    
Documentation    Essa suíte testa o site da Amazon.com.br
Resource          amazon_resource.robot     
Test Setup        Abrir o navegador      
#Test Teardown     Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Mais vendidos"
    [Documentation]    Esse teste verifica  menu mais vendidos do site Amazon.com.br
    ...                e verifica a categoria Computadores e Informatica
    [Tags]             Menus categorias

    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página
    
Caso de teste 02 - Pesquisa de um Produto
     [Documentation]    Esse teste verifica a busca de um protocolo
     [Tags]             busca_produtos   
     Dado que estou na home page da Amazon.com.br
     Quando pesquisar peLo produto "Xbox Series S"
     Então o título da página deve ficar "Amazon.com.br : Xbox Series S "
     E um produto da linha "Xbox Series S" deve ser mostrado na página
     
