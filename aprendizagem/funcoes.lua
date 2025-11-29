-- Eu posso guardar uma função em uma variavel
variavel = function (a,b) return a + b end

--print(variavel(10,20))

--print(variavel(20,30))

-- Há um açucar sintatico para isso 

function sub ( a, b) return a - b end

--print(variavel(10,20) + sub(30,10))

-- Isso acontece pois as funções, em lua, são declaradas dinâmicamente

-- Aqui está a cereja do bolo para mim, até agora

function sumSub (a,b) 
    return a + b, a - b  -- Podemos retornar mais de um valor em uma função
end


--print(sumSub(20,10))

-- Atribuição multipla

a, b = sumSub(35,15)

--print(a)
--print(b)

a, b, c = sumSub(35,15), sumSub(35,15)

print(a)
print(b)
print(c)
