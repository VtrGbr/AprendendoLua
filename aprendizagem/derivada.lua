function derivada(funcao, delta)
    return function (x)
        return (funcao(x+delta) - funcao(x)) / delta
    end
end

function xQuadrado(x)
    return x^2
end
function xCubo(x)
    return x^3
end

local quadrado = derivada(xQuadrado,0.00001)

local resultado1 = quadrado(3)
print(string.format("Resultado: %.5f",resultado1))

local cubo = derivada(xCubo,0.0001)

local resultadoCubo = cubo(3)

print(string.format("Resultado: %.5f",resultadoCubo))


function composta(f,g)
    return function (x)
        return f(g(x))
    end
end

local compor = composta(math.sin,xQuadrado)
local valor = compor(2)
local derivar = derivada(compor, 0.00001)

local resultadoFinal = derivar(2)

print(string.format("Resultado: %.5f",resultadoFinal))