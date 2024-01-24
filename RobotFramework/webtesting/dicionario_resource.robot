*** Variables ***
&{DIAS_POR_MES_2023}    janeiro=31
...                     fevereiro=28
...                     março=31
...                     abril=30
...                     maio=31
...                     junho=30
...                     julho=31
...                     agosto=31
...                     setembro=30
...                     outubro=31
...                     novembro=30
...                     dezembro=31

*** Keywords ***

Imprimir o dicionario

    Log To Console    Em JANEIRO há ${DIAS_POR_MES_2023.janeiro} dias.
    Log To Console     Em FEVEREIRO há ${DIAS_POR_MES_2023.fevereiro} dias.
    Log To Console     Em MARÇO há ${DIAS_POR_MES_2023.março} dias.
    Log To Console     Em ABRIL há ${DIAS_POR_MES_2023.abril} dias.
    Log To Console     Em MAIO há ${DIAS_POR_MES_2023.maio} dias.
    Log To Console    Em JUNHO há ${DIAS_POR_MES_2023.junho} dias.
    Log To Console     Em JULHO há ${DIAS_POR_MES_2023.julho} dias.
    Log To Console    Em AGOSTO há ${DIAS_POR_MES_2023.agosto} dias.
    Log To Console    Em SETEMBRO há ${DIAS_POR_MES_2023.setembro} dias.
    Log To Console    Em OUTUBRO há ${DIAS_POR_MES_2023.outubro} dias.
    Log To Console    Em NOVEMBRO há ${DIAS_POR_MES_2023.novembro} dias.
    Log To Console    Em DEZEMBRO há ${DIAS_POR_MES_2023.dezembro} dias.