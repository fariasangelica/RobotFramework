
*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br
${MAIS_VENDIDOS}   //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]
${HEADER_MAISVENDIDOS}    //span[contains(@class,'a-size-extra-large a-color-base _p13n-zg-banner-landing-page-header_style_zgLandingPageBannerText__3HlJo')]
${BUTTON_PESQUISAR}    //input[contains(@type,'submit')]
${INPUT_PESQUISAR}        name=field-keywords
${SUBMIT_PESQUISAR}    css=input#nav-search-submit-button.nav-progressive-attribute
${PRODUTO}    //span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Construcao')]
${ADC_CARRINHO}    //input[contains(@name,'submit.add-to-cart')]
${CANCELAR_PEDIDO}    css=input.a-button-input


*** Keywords ***
Abrir o navegador
    Open Browser     browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Page Contains Element    locator=${MAIS_VENDIDOS}

    
Entrar no menu "Mais vendidos"
    Click Element    locator=${MAIS_VENDIDOS} 

Verificar se aparece a frase "Mais vendidos"
    Wait Until Element Is Visible    locator=${HEADER_MAISVENDIDOS} 

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${MENU_CATEGORIA}"
    Element Should Be Visible    locator=//a[@href='/gp/bestsellers/music/ref=zg_bs_nav_0'][contains(.,'CD e Vinil')]

Pesquisar por "${TEXTO_PESQUISA}"
    Click Button    locator=${BUTTON_PESQUISAR}
    Input Text    ${INPUT_PESQUISAR}    ${TEXTO_PESQUISA}
    Click Element    ${SUBMIT_PESQUISAR}

Encontrar o produto
   Wait Until Page Contains Element    locator=${PRODUTO} 
   Click Element    locator=${PRODUTO}

Adicionar o produto "Construção" no carrinho
    Click Button    locator=${ADC_CARRINHO} 

Cancelar o produto
    Click Button    locator=${CANCELAR_PEDIDO}
    




   
 
# GHERKIN STEPS
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    
Quando acessar o menu "Mais vendidos"
    Entrar no menu "Mais vendidos"

Então o título da página deve ficar "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    
E o texto "Mais vendidos" deve ser exibido na página
    Verificar se aparece a frase "Mais vendidos"

E a categoria "CD e Vinil" deve ser exibida na página
    Verificar se aparece a categoria "CD e Vinil"

Quando pesquisar pelo produto "CD e Vinil"
    Pesquisar por "CD construção do Chico Buarque"

O produto "Construção" deve ser mostrado na página
    Encontrar o produto

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Adicionar o produto "Construção" no carrinho

Quando remover o produto "Construção" do carrinho
    Cancelar o produto
    
    



