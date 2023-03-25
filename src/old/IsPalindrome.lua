--[[
    how to use:
    local palindromeTest = require("path")

    if palindromeTest("wow") then
        print("wow is a palindrome")
    else
        warn("wow isn't a palindrome")
    end
]]


local RNG = Random.new()

local words = {
    "deed",
    "peep",
    "wow",
    "noon",
    "hello"
    "stranger",
    "occupied",
    "crazy"
}

local function splitText(text)
    local strings = table.create(#text)

    for i = 1, #text do
        table.insert(strings, string.sub(text, i, i))
    end

    return strings
end

local function rearrange(list)
    local normal = ""
    local reversed = ""

    for _, letter in ipairs(list) do
        normal = normal .. letter
    end

    for i = #list, 1, -1 do
        reversed = reversed .. list[i]
    end

    return normal, reversed
end

local function run(text)
    local normal, reversed = rearrange(splitText(text))
    return normal == reversed 
end

return run
