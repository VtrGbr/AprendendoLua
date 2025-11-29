
--Função para saber se dado um ponto, ele está contido no circulo
function circle(dx,dy,r)
    return function (x,y)
        return (x - dx)^2 + ( y - dy)^2 <= r^2
    end
end


local c1 = circle(0,0,2)

print(c1) -- Aqui retorna o endereço da função circle

local resultado = c1(0.5,0.5) -- Aqui usamos a função interna de circle

print(resultado)

resultado = c1(1,1)
print(resultado)