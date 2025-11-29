# Aprendendo sobre lua

- Lua é uma linguagem bem leve, multi paradigma e de tipagem dinâmica ( semelhante ao python)

## Funções:

### Soma dos elementos do array
```lua 

    function add (a)
        local sum = 0
        for i = 1, #a do sum = sum + a[i] end
        return sum
    end
```

Vamos entender mais sobre esta função:
1. **Paramentros**: nos parâmetros de uma função, não há o tipo dessa função, justamente por ser de tipagem dinâmica

2. **Local**: É uma palavra reservada para declarar uma variavel local em uma função

3. **#a**: Esta expressão significa que ela vai retornar o tamanho do array

4. Observe que a variavel **i** começou em 1, isso porque o array, em lua, começa no número 1.

5. Ao terminar uma função, não usamos chaves, mas sim a palavra reservada **end**


### Soma das linhas de um arquivo

```lua
    function addfile (filename)
        local sum = 0
        for line in io.lines(filename) do
        sum = sum + tonumber(line)
        end
        return sum
    end
```
Em contraste ao exemplo anterior, o for aqui usado é mais genérico, usando o **io.lines**.

tonumber converte uma string em seu valor númerico

### Prefixos de string

```lua 
    function buildPrefixTable (list)
        local t = {}
        for _, name in ipairs(list) do
            for len = 1, #name do
                local prefix = string.sub(name, 1, len)
                if t[prefix] then
                    t[prefix] = true -- colisao
                else
                    t[prefix] = name
                end
            end
        end
        return t
    end

```
- A expressão {} cria uma tabela vazia, que é atribuida à variável local t.

- O laço externo usa o gerador **ipairs**, que percorre todos os índices
e valores do array dado (list). Os índices são atribuídos à primeira
variável (que nomeamos *_*, já que não estamos interessados no seu
valor), e os valores à segunda variável (name).

- A função string.sub retorna uma substring de uma dada string (name,
no caso). Assim como arrays, caracteres em strings são indexados a
partir de 1. Em particular, a chamada como feita no exemplo vai retornar
um prefixo de name com comprimento len.

- Na condição do if, usamos o fato de que o valor nil, que é o valor
de campos não inicializados em uma tabela, é equivalente a falso em
qualquer condição. Assim, o que está sendo testado é se o campo da
tabela com chave prefix já foi preenchido anteriormente.

- No caso do teste dar positivo (isto é, a tabela já ter um elemento com a
dada chave), a função coloca o valor true na posição já ocupada. Como
este valor não é uma string, ele serve como uma marca para colisões.2


A fonte usada para o aprendizado está contida no site [aprendendo lua](https://www.lua.org/doc/jai2009.pdf)

### Retornar multiplos resultados

- Aqui está algo que me impressionou bastante, uma função pode retornar mais de um valor. Em C, para realizarmos esta proeza, temos que usar ponteiros, mas em Lua, isso não é necessário (pelo menos não explicitamente)

```lua
    function foo (x) return x, x+1 end
        print(foo(3)) --> 3 4

```

- "Em uma atribuição múltipla, Lua não exige que o número de valores seja
igual ao número de variáveis. Se houver mais valores, os valores extras são
descartados; se houver mais variáveis, as variáveis extras recebem o valor
nil. O mesmo ocorre em uma chamada de função, em relação aos argumentos fornecidos na chamada e os parâmetros esperados pela função: se
chamamos uma função com mais argumentos que o necessário, os argumentos extras são descartados; se houver argumentos faltando, eles assumem o
valor nil."

Algo bastante interessante, diga-se de passagem.