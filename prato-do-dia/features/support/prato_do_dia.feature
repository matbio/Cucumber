#language: pt

Funcionalidade: Qual é o prato do dia
    Queremos saber qual o prato servido no dia da semana em um restaurante.

    Esquema do Cenario: Prato especial do dia
        Dado que hoje é <dia>
        Quando eu perguntar qual o prato do dia
        Então deve ser informado que é <especial>

        Exemplos:
        | dia             | especial                      |
        | "segunda-feira" | "Macarrão com filé de frango" |
        | "terça-feira"   | "Peixe Frito"                 |
        | "quarta-feira"  | "Feijoada"                    |
        | "quinta-feira"  | "Frango Assado"               |
        | "sexta-feira"   | "Purê com carne de panela"    |
        | "sábado"        | "Lasanha"                     |
        | "domingo"       | "Não trabalhamos"             |
        | "xxxxxxx"       | "dia inválido"                |
        | "1234567"       | "dia inválido"                |
        | "       "       | "dia inválido"                |
        | ""              | "dia inválido"                |

