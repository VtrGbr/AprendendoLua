function prefixo( s, len)
    local len = len or 0

    if len <= #s then
        return string.sub(s,1,len),
        prefixo(s,len+1) 
    end
    
end

print(prefixo("Vitor"))
