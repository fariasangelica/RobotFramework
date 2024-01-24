*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resource.robot
Task Setup       Abrir o navegador
#Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Mais vendidos"
    [Documentation]    Esse teste verifica  menu mais vendidos do site Amazon.com.br
    ...                e verifica a categoria CD e Vinil
    [Tags]             Menus    categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Mais vendidos"
    Verificar se aparece a frase "Mais vendidos"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    Verificar se aparece a categoria "CD e Vinil"
    Pesquisar por "CD construção do Chico Buarque"
    Encontrar o produto
    Adicionar o produto "Construção" no carrinho
    Cancelar o produto





    