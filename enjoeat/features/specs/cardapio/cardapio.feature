#language: pt

Funcionalidade: Cardapio
    Sendo um usuário
    Que escolheu um restaurante
    Posso ver o cardapio dele
    Contexto:
      Dado que eu acesso o enjoeat
      Quando eu acessar o cardápio do restaurante "Burger House"

    Cenário: Produtos do cardápio
      Então eu vou ver os produtos diponiveis no cardápio
            | nome            | descricao                       | valor    |
            | Classic Burger  | O clássico. Não tem como errar. | R$ 18,50 | 
            | Batatas Fritas  | Batatas fritas crocantes        | R$ 5,50  |
            | Refrigerante    | O refri mais gelado da cidade.  | R$ 4,50  |

    Cenário: Carrinho vazio
      Então vou verificar que meu carrinho apresenta a mensagem "Seu carrinho está vazio!"
