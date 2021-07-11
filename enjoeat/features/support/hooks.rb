Before('@restaurante_selecionado') do
    visit '/restaurants/bread-bakery/menu'
end

After do
    sleep 2
end