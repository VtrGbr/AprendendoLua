--5º
local x = 10
function teste()
  local x = 20
  print(x)
end
teste()
print(x)

-- O resultado será 20 e depois 10

--6º

function criarContador()
    local x = 0
    return function ()
        print(x + 1)
        x = x + 1
    end
end

local funcao = criarContador()

funcao()
funcao()
funcao()
funcao()
funcao()

--7º

function gerarMultiplicador(fator)
    return function(numero)
        return fator * numero
    end
end

dobro = gerarMultiplicador(2)

print(dobro(5))

triplo = gerarMultiplicador(3)

print(triplo(5))


--8º

function mediaMovel()
    local soma = 0
    local quantidade = 0
    return function(nota)
        soma = soma + nota
        quantidade = quantidade + 1
        return soma / quantidade
    end
end

media1 = mediaMovel()

nota1 = media1(10)
nota2 = media1(8)
nota3 = media1(7)
nota4 = media1(5)

print(string.format("media1: %.2f, media2: %.2f, media3 = %.2f, media4 = %.2f",nota1,nota2,nota3,nota4))

-- 9º

function contagemRegressiva(inicio)
    local auxiliar = inicio
    return function()

        if auxiliar <= 0 then
            print("Acabou")
        else
            print(auxiliar)
        auxiliar = auxiliar - 1
        end
    end
end
   

contar = contagemRegressiva(10)

contar()
contar()
contar()
contar()
contar()
contar()
contar()
contar()
contar()
contar()
contar()

-- 10º

function cofre(senhaCorreta)
    local tentativaErrada = 0
    return function(senhaTentativa)
        if senhaTentativa ~= senhaCorreta and tentativaErrada < 3 then
            tentativaErrada = tentativaErrada + 1
            return "Fechado"
        elseif senhaCorreta == senhaTentativa and tentativaErrada < 3 then
            return "Aberto"
        else
            return "Bloqueado"
        end
    end
end

usuario1 = cofre(1234)
usuario2 = cofre(123)

print(usuario1(1234))
print(usuario1(123))
print(usuario1(1234))
print(usuario1(123))
print(usuario1(123))
print(usuario1(123))
print(usuario1(1234))
print(usuario1(1234))
print(usuario1(1234))
print(usuario1(1234))
print(usuario2(123))

        