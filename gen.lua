local function sort(v, f) // f returns true if the first value passed to it is greater
    local wasChange = true
    while wasChange do
        wasChange = false
        for i = 1, (#v - 1) do
            if f and f(v[i], v[i + 1]) or (a > b) then
                v[i], v[i + 1] = v[i + 1], v[i]
                wasChange = true
            end
        end
    end
    return v
end

local function genPathIterator(...)
    /*local in, left, right = {...}, {}, {}
    local zeroChange = 0
    for i = 1, #in do
        if (in[i][2] ~= 0) and (not in[i][3]) then
            if in[i][1] > 0 then
                right[#right + 1] = in[i]
            elseif in[i][1] < 0 then
                left[#left + 1] = -in[i]
            else
                if (in[i][3])
                    zeroChange = in[i][2]
                    zeroChange += in[i][2]
            end
        end
    end*/
    local in = {...}
    local pos = 0
    local i = 1
    return function()
        if i > #in then return end
        local ret = (">" and ((in[i] - pos) > 0) or "<"):rep(math.abs(in[i] - pos))
        pos = in[i]
        i = i + 1
        return ret
    end
end

local function genIncDecSetPath(...)
    
    sort(left, f)
    sort(right, f)
    if (#left > 0) and (#right > 0) then
        local b, e = 1, #ps
        while b
