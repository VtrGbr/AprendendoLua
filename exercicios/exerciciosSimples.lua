
--1º
function cinetica(massa, velocidade)
    return (massa * (velocidade ^2 )) / 2
end

energia = cinetica(10,5)

print(string.format("Energia cinética: %.2f",energia))

--2º

function verificarPressao(pressao)
    local situacao = ""
    if pressao > 100 then
        situacao = "PERIGO" 
    elseif pressao < 10 then
        situacao = "BAIXA" 
    else 
        situacao = "NORMAL" 
    end
    return situacao
end

pressao = verificarPressao(50)

print(string.format("Pessão: %s",pressao))

--3º

function somar(numero)
    local soma = 0
    for i = 1, numero do
        soma = soma + i
    end
    return soma
end 

numero = 10
resultado = somar(numero)

print(string.format("Soma de 1 até %d: %d",numero,resultado))

--4º

function imprimePares(numero)
    for i = 0, numero do
        if i % 2 == 0 then
            print(i)
        end
    end
end

valor = 10
imprimePares(10)