
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
    local strings = table.create(#text+1)

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

local function palindromeTest(text)
    local subject = text or words[RNG:NextInteger(1, #words)]
    
    local normal, reversed = rearrange(splitText(subject))

    local result = "Looks like %q " .. (normal == reversed and "is" or "is't") .. " Palindrome"

    warn(string.format(result, subject))
end

palindromeTest("hello")
palindromeTest()
palindromeTest()
palindromeTest("wow")
