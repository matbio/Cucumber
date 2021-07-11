class RestListPage
    include Capybara::DSL

#Lista de restaurantes
    def visit_rest
        visit '/restaurants'
    end

    def all_rest
        all('.restaurant-item')
    end

end