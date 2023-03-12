--[[
    "Way too complicated and scuffy but it gets the job done" - Kronos
    thanks for his opinion on the previous version I realized there is an easier way to do it
--]]

local function isPalindrome(text)
    return string.sub(text, #text, #text) == string.sub(text, 1, 1)
end

print(isPalindrome("wow"))
print(isPalindrome("reverse"))
