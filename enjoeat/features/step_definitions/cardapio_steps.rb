Dado('que eu acesso o enjoeat') do
    visit '/restaurants'
end
Quando('eu acessar o cardápio do restaurante {string}') do |restaurante|
    find('.restaurant-item', text: restaurante.upcase).click

end
  
Então('eu vou ver os produtos diponiveis no cardápio') do |table|
    produtos = all('.menu-item-info-box')
    products_data = table.hashes

    products_data.each_with_index do |value, index|
        expect(produtos[index]).to have_text value['nome'].upcase
        expect(produtos[index]).to have_text value['descricao']
        expect(produtos[index]).to have_text value['valor']
    end
end

Então('eu vou ver os detalhes categoria, descrição e horários.') do |table| 
    infos = table.rows_hash
    details = find('#restaurant')
    expect(details).to have_text infos['categoria']
    expect(details).to have_text infos['descricao']
    expect(details).to have_text infos['horarios']
    expect(details).to have_text infos['nome']
    expect(details).to have_text infos['avaliacao']
        
end                                                                         