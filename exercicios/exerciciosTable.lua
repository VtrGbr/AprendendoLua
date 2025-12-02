--1º

config = {}

config.porta = 8080

config.ip = "192.168.0.1"

print(config.porta, config["ip"])

-- 2º

cores = {"azul", "vermelho", "verde"}

print(cores[2])
--print(cores[0],core[4]) -- o compilador descreve um erro de index, já que o index em lua começa no 1 e não no 0

--3º

notas = {["Vitor"] = 8.0, ["Gabriel"] = 9.5, ["Daniel"] = 10}

function imprimirNotas(notas)
    for k, v in pairs(notas) do
        print(string.format("Nome: %s Notas: %.2f",k, notas[k]))
    end
end

imprimirNotas(notas)

-- A impressão não foi nem em ordem alfabética, númerica ou na ordem ao qual as notas foram colocadas
-- Presumo que a ordem é devida a alguma operação de dispersão que se tem em hash tables

--4º

numero = {1,50,20,10,40,60,2,80,90,100}

function imprimirNumero(numero)
    for i, v in ipairs(numero) do
        print(i, numero[i])
    end
end

imprimirNumero(numero)

--5º

perfil = {"Engenheiro", "Professor", idade = 40, nivel = "Sênior"}

print(perfil[1], perfil.nivel)

-- 6º

a = {10, 20, 30, nil, 50}

print(#a)

-- 7º

--larguraAltura{elementos}

