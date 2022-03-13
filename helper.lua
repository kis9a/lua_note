local helper = {}

helper.main = function(arg)
    local a = arg[1]
    if a == 'greet' then helper.greet() end
end

helper.greet = function() print("this is helper functions") end

helper.map = function(fn, ary)
    local a = {}
    for i = 1, #ary do table.insert(a, fn(ary[i])) end
    return a
end

helper.remove_if = function(fn, ary)
    local a = {}
    for i = 1, #ary do if not fn(ary[i]) then table.insert(a, ary[i]) end end
    return a
end

helper.filter = function(fn, ary)
    local a = {}
    for i = 1, #ary do if fn(ary[i]) then table.insert(a, ary[i]) end end
    return a
end

helper.times_element = function(n, ary)
    return helper.map(function(x) return x * n end, ary)
end

helper.remove_string = function(c, ary)
    return helper.remove_if(function(x) return c == string.sub(x, 1, 1) end, ary)
end

helper.range = function(a, b, step)
    if not b then
        b = a
        a = 1
    end
    step = step or 1
    local f = step > 0 and function(_, lastvalue)
        local nextvalue = lastvalue + step
        if nextvalue <= b then return nextvalue end
    end or step < 0 and function(_, lastvalue)
        local nextvalue = lastvalue + step
        if nextvalue >= b then return nextvalue end
    end or function(_, lastvalue) return lastvalue end
    return f, nil, a - step
end

helper.main(arg)
return helper
