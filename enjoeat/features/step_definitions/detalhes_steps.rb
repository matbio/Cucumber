
Então('eu vou ver os detalhes categoria, descrição e horários.') do |table| 
infos = table.rows_hash
details = find('#restaurant')
expect(details).to have_text infos['categoria']
expect(details).to have_text infos['descricao']
expect(details).to have_text infos['horarios']
expect(details).to have_text infos['nome']
expect(details).to have_text infos['avaliacao']
    
end                                                                         