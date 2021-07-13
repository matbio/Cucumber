Dado('que eu fechei o pedido com os itens:') do |table|                      
    @products_data = table.hashes
    steps %{
      Quando eu adiciono todos os itens
      Quando eu fecho o meu carrinho
    }
end                                                                                                                                                   
Dado('informei os meus dados de entrega:') do |table|                        
    client_date = table.rows_hash
    @order_page.fill_user_data(client_date)
end                                                                                                                                                     
Quando('eu finalizo o pedido com {string}') do |forma_pagamento|                      
    @order_page.select_payment(forma_pagamento)
    @order_page.close_order
end                                                                                                                                                    
Então('devo ver a seguinte mensagem:') do |pedido_finalizado|                       
  expect(@order_page.end_order).to have_content pedido_finalizado
end                                                                          