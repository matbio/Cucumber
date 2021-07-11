#language: pt

Funcionalidade: Detalhes
    Para que eu possa ver os detalhes adicionais
    Sendo um usuário que escolheu um restaurante
    Posso ver a categoria, descrição e horários

    Cenário: Detalhes do resturante
      Dado que eu acesso o enjoeat
      Quando eu acessar o cardápio do restaurante "Burger House"
      Então eu vou ver os detalhes categoria, descrição e horários.
            | categoria | Hamburgers                               |
            | descricao | 40 anos se especializando em trash food. | 
            | horarios  | Funciona todos os dias, de 10h às 22h    |
            | nome      | Burger House                             |
            | avaliacao | 3.5                                      | 
