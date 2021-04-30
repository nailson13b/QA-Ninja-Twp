#language: pt

Funcionalidade: Buttons
    @short
    Cenario: Clique Simples

        Dado que acesso a tela Click Simples
        Quando faço um click simples
        Entao devo ver o texto: "Isso é um clique simples"

    @long    
    Cenario: Click Longo

        Dado que acesso a tela click longo
        Quando faço um click longo
        Entao devo ver o botão com o texto: "CLIQUE LONGO OK"