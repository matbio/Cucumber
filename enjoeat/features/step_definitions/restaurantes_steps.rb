Dado("que temos os seguintes restaurantes") do |table|
  @restaurant_data = table.hashes
end
Quando("acesso a lista de restaurantes") do
  @rest_list_page.visit_rest
end
Então("devo ver todos os restaurantes desta lista") do
  restaurants =  @rest_list_page.all_rest

  @restaurant_data.each_with_index do |value, index|
      expect(restaurants[index]).to have_text value['nome'].upcase
      expect(restaurants[index]).to have_text value['categoria']
      expect(restaurants[index]).to have_text value['entrega']
      expect(restaurants[index]).to have_text value['avaliacao']
  end
end