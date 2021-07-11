# Adicionar 1 ou mais itens
Dado('que o produto desejado é {string}') do |produto|
  @produto = produto
end
 
Dado('o valor do produto é de {string}') do |preco|
  @preco = preco
end
 
Quando('eu adiciono {int} unidade\(s)') do |unidades|
  unidades.times do
    @rest_page.add_cart(@produto)
  end
end

Então('deve ser adicionado {int} unidade\(s) deste item') do |unidades|
  expect(@rest_page.cart.id_cart.find("tr", text: @produto)).to have_text "(#{unidades}x) #{@produto}"
end

Então('o valor total deve ser de {string}') do |total|
    expect(@rest_page.cart.total).to have_text total
end

# Adicionar todos os itens

Dado('que os produtos desejados são:') do |table|
    @products_data = table.hashes
end
 
Quando('eu adiciono todos os itens') do
  @products_data.each do |p|
    p['quantidade'].to_i.times do
      @rest_page.add_cart(p['nome'])
    end
  end
end
 
Então('vejo todos os itens no carrinho') do
  @products_data.each do |p|
    expect(@rest_page.cart.id_cart.find("tr", text: p['nome'])).to have_text "(#{p['quantidade']}x) #{p['nome']}"
  end
end

# Remover 1 ou mais itens

Dado('que eu tenho os seguintes itens no carrinho:') do |table|
  @produtcts_cart = table.hashes
  @produtcts_cart.each do |p|
    p['quantidade'].to_i.times do
      @rest_page.add_cart(p['nome'])
    end
  end

end

Quando('eu removo somente o {int}') do |item|
  @rest_page.cart.remove(item)
end

# Remover todos os itens

Quando('eu removo todos os itens') do
  @produtcts_cart.each_with_index do |value, index|
    @rest_page.cart.remove(index)
  end
end

Quando('eu limpo o meu carrinho') do
  @rest_page.cart.clean
end

Então('vou verificar que meu carrinho apresenta a mensagem {string}') do |carrinho_vazio|
  expect(@rest_page.cart.id_cart).to have_text carrinho_vazio
end