#language: pt


Funcionalidade: Verificar o redirecionamento das categorias

Contexto: 
Dado eu estar na pagina categorias do site

@categorias
Esquema do Cenario: Verificar categorias menu principal com sucesso
Quando eu clico no botao CATEGORIAS
E escolho uma <categoria> no menu
Entao eu verifico se aparecem <servicos> da escolhidos
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
