class OrderPage
    include Capybara::DSL
    def total_shipping
        find('div[class="col-sm-6 col-xs-12"]', text: 'Frete e Total:').all('table tbody tr')
    end

    def fill_user_data(user)
      find("input[formcontrolname=name]").set user[:nome]
      find("input[formcontrolname=email]").set user[:email]
      find("input[formcontrolname=emailConfirmation]").set user[:email]
      find("input[formcontrolname=address]").set user[:rua]
      find("input[formcontrolname=number]").set user[:numero]
      find("input[formcontrolname=optionalAddress]").set user[:complemento]
    end

    def select_payment(forma_pagamento)
        find('label', text: forma_pagamento).find('.iradio_flat-red').click
    end

    def close_order
        click_button 'Finalizar Pedido'
    end

    def end_order
        find('.content')
    end


end