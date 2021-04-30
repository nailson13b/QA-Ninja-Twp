#language: pt

Funcionalidade: Inputs

    @radio
    Cenario: Radio Button

        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção Ruby
        Entao esta opção deve ser marcada

    @checkbox
    Cenario: Checkbox
        Dado que eu acesso a tela Checkbox
        Quando eu marco a opção Ruby
        Entao esta opção deve estar marcada

        
    @checkbox2
    Cenario: Todas as techs que usam o Appium
        Dado que eu acesso a tela Checkbox
        Quando eu marco as seguintes techs:
            |tech|
            |Ruby|
            |Java|
            |Python|
            |Javascript|
            |C#|
            |Robot Framework|
        Entao todas essas opções devem estar marcadas