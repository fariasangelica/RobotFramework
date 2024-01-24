*** Settings ***
Documentation    Esse teste imprime no console os dias de cada mes do ano.
Resource   dicionario_resource.robot

*** Test Cases ***
Imprimir dias por mês de 2023
    Imprimir o dicionario