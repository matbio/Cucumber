#language:pt

@restaurante_GreenFood
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário fechou o carrinho com itens
    Posso finalizar o meu pedido

    Cenario: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descricao                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fribas e muito saboroso.        | R$ 21,00 |
        E informei os meus dados de entrega:
            | nome        | Matheus          |
            | email       | eu@hotmail.com   |
            | rua         | Avenida Paulista |
            | numero      | 1000             |
            | complemento | 17o andar        |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """