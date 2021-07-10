Dado('que eu acesso o enjoeat') do
    visit '/restaurants'
end
Quando('eu acessar o cardápio do restaurante {string}') do |restaurante|
    find('.restaurant-item', text: restaurante.upcase).click

end
  
Então('eu vou ver os produtos diponiveis no cardápio') do |table|
    produtos = all('.menu-item-info-box')
    products_data = table.hashes

    puts produtos.size
    products_data.each_with_index do |value, index|
        expect(produtos[index]).to have_text value['nome'].upcase
        expect(produtos[index]).to have_text value['descricao']
        expect(produtos[index]).to have_text value['valor']
    end
end

Então('vou verificar que meu carrinho apresenta a mensagem {string}') do |carrinho_vazio|
    expect(find('#cart')).to have_text carrinho_vazio
end