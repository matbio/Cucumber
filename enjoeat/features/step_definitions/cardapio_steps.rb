Dado('que eu acesso o enjoeat') do
    @rest_list_page.visit_rest
end
Quando('eu acessar o cardápio do restaurante {string}') do |restaurante|
    @rest_page.select_rest(restaurante)

end
  
Então('eu vou ver os produtos diponiveis no cardápio') do |table|
    produtos = @rest_page.all_itens_rest
    products_data = table.hashes

    products_data.each_with_index do |value, index|
        expect(produtos[index]).to have_text value['nome'].upcase
        expect(produtos[index]).to have_text value['descricao']
        expect(produtos[index]).to have_text value['valor']
    end
end

Então('eu vou ver os detalhes categoria, descrição e horários.') do |table| 
    infos = table.rows_hash
    expect(@rest_page.details_rest).to have_text infos['nome']
    expect(@rest_page.details_rest).to have_text infos['avaliacao']
    expect(@rest_page.details_rest).to have_text infos['categoria']
    expect(@rest_page.details_rest).to have_text infos['descricao']
    expect(@rest_page.details_rest).to have_text infos['horarios']
        
end                                                                         