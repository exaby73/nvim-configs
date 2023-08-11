function FirstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function SnakeToPascalCase(word)
    local words = {}

    for w in string.gmatch(word .. '_', '(.-)_') do
        if string.len(w) ~= 0 then
            table.insert(words, FirstToUpper(w))
        end
    end

    return table.concat(words, '')
end

