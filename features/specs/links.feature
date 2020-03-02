#language: pt

Funcionalidade: Verificar o redirecionamento para os links


@links
Esquema do Cenario: Verificar redirecionamento dos links com sucesso
Dado eu estar na pagina favoritos
Quando eu clico em um <link> da tela
Entao eu verico se redirecionou para as <paginas> corretas
Exemplos:  
| link |                       paginas                         |
|   4  |   "https://www.facebook.com/meucasamentofacillavras"  |
|   5  |  "https://www.instagram.com/meucasamentofacillavras/" |