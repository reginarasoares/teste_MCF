#language: pt

@final
Funcionalidade: Site - Meu Casamento Facil

Cenario: Fazer login com sucesso
Dado eu estar na pagina inicial do site
Quando eu clico no botao ENTRAR
E preencho os campos corretamente
Entao eu verifico se entrou na pagina pessoal


Esquema do Cenario: Verificar categorias menu principal com sucesso
Quando eu clico no botao CATEGORIAS
E escolho uma <categoria> no menu
Entao eu verifico se aparecem <servicos> da categoria escolhida
Exemplos:
|  categoria |                servicos              |
|     0      |            "Z&K Utilidades"          |
|     1      |            "Liliene Make Up"         |
|     2      |         "Cerimonial Bell'amore"      |
|     3      | "Moraes e Cia. - Churrasco Completo" |
|     4      |        "Gráfica Novo Horizonte"      |
|     5      |    "Glamour Eventos - Marlene Lima"  |
|     6      |           "Recanto Paraíso"          |
|     7      |          "Gilney Fotografia"         |
|     8      | "Igreja Nossa Senhora Auxiliadora"   |
|     9      |            "CVC Lavras"              |
|    10      |            "CelebraMus"              |
|    11      |        "Glamour Noivas e Festas"     |


Cenario: Buscar por serviço à favoritar com sucesso
Quando eu preencho o campo de busca
Entao verifico se o resultado da busca esta correto

Cenario: Favoritar com sucesso
Quando eu clico no botao FAVORITAR
Entao eu verifico se o servico foi adicionado no FAVORITOS


Esquema do Cenario: Verificar redirecionamento dos links com sucesso
Quando eu clico em um <link> da tela
Entao eu verico se redirecionou para as <paginas> corretas
Exemplos: 
| link |                       paginas                         |
|   5  |   "https://www.facebook.com/meucasamentofacillavras"  |
|   6  |  "https://www.instagram.com/meucasamentofacillavras/" |