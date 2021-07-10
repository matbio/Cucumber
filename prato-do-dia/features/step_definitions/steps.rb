module Enjoeat
  def prato_do_dia(dia)
    case
    when dia == "segunda-feira"
      "Macarrão com filé de frango"
    when dia == "terça-feira"
      "Peixe Frito"
    when dia == "quarta-feira"
      "Feijoada"
    when dia == "quinta-feira"
      "Frango Assado"
    when dia == "sexta-feira"
      "Purê com carne de panela"
    when dia == "sábado"
      "Lasanha"
    when dia == "domingo"
      "Não trabalhamos"
    else
      "dia inválido"
    end
  end
end

World Enjoeat
#Coloca os parâmetros do metodo como globais

Dado("que hoje é {string}") do |dia|
  @hoje = dia
end

Quando("eu perguntar qual o prato do dia") do
  @prato_obtido = prato_do_dia(@hoje)
end

Então("deve ser informado que é {string}") do |prato_esperado|
  expect(@prato_obtido).to eql prato_esperado
end
