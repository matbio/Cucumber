class CartView
    include Capybara::DSL
    def id_cart
        find('#shopping-cart')
    end
    def remove(item)
        id_cart.all('table tbody tr')[item].find('.danger').click
    end
    def total
        id_cart.find("tr", text: 'Total:')
    end
    def clean
        id_cart.click_button 'Limpar'
    end

end