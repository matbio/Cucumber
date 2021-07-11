# Page de metodos de operações com restaurantes
class RestPage
    include Capybara::DSL

#Com Resturante selecionado
    def select_rest(restaurante)
        find('.restaurant-item', text: restaurante.upcase).click
    end

    def all_itens_rest
        all('.menu-item-info-box')
    end

    def details_rest
        find('#restaurant')
    end

    def add_cart(produto)
        find('.menu-item-info-box', text: produto.upcase).find('.add-to-cart').click
    end

    def cart
        CartView.new
    end

end