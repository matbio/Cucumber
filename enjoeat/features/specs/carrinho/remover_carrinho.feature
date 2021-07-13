#language: pt
@restaurante_BreadEBakery
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que dessitiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Contexto: Itens no carrinho
        Dado que eu tenho os seguintes itens no carrinho:
          | nome                   | preco    | quantidade |
          | Cup Cake               | R$ 8,70  | 1          |
          | Donut                  | R$ 2,50  | 2          |
          | Pão Artesanal Italiano | R$ 15,90 | 1          |

    Esquema do Cenario: Remover item

        Quando eu removo somente o <item>
        Então o valor total deve ser de <total>

        Exemplos:
        | item | total      |
        | 0    | "R$ 20,90" |
        | 1    | "R$ 24,60" |
        | 2    | "R$ 13,70" |

    Cenario: Remover todos os itens

        Quando eu removo todos os itens
        Então vou verificar que meu carrinho apresenta a mensagem "Seu carrinho está vazio!"

    Cenario: Limpar carrinho

        Quando eu limpo o meu carrinho
        Então vou verificar que meu carrinho apresenta a mensagem "Seu carrinho está vazio!"