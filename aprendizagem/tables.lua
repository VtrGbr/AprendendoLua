tabela = {}

tabela.x = 10

tabela.y = 20

tabela.nome = "Gabriel"

print(tabela.x, tabela.y, tabela.nome)


array = {1,2,3,4,5}

function somaArray( array)
    local soma = 0
    for i = 1, #array do
        soma = soma + array[i]
    end
    return soma
end

print(somaArray(array))

-- Construtores

--Construtor de listas

dia = {"domingo", "segunda","terça", "quarta", "quinta", "sexta", "sábado"}

print(dia[3])

--Construtor de estrutura

planoCartesiano = {eixoX = 10, eixoY =  20}

print(planoCartesiano.eixoX)

--Construtores genéricos

generico = {["nome"] = "Vitor", ["idade"] = 23, ["sexo"] = "masculino"}

print(generico["idade"])