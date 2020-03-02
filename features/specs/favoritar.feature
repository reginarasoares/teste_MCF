#language: pt

@favoritar
Funcionalidade: Ação FAVORITAR


Cenario: Buscar por serviço à favoritar com sucesso
Dado eu estar na tela BUSCA
Quando eu preencho o campo de busca
Entao verifico se o resultado da busca esta correto

Cenario: Favoritar com sucesso
Quando eu clico no botao FAVORITAR
Entao eu verifico se o servico foi adicionado no FAVORITOS