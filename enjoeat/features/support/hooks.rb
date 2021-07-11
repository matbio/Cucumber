Before do 
    @rest_page = RestPage.new
    @rest_list_page = RestListPage.new

end

Before('@restaurante_selecionado') do
    visit '/restaurants/bread-bakery/menu'
end

After do
    sleep 1
end