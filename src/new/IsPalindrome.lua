--[[
    "Way too complicated and scuffy but it gets the job done" - Kronos
    thanks for his opinion on the previous version I realized there is an easier way to do it
--]]

-- Warnings: only works if the 1st and last letter is the same, the problem is that words that aren't palindrome like "dead" will count as palindrome
-- use the old version for precise results!

local function isPalindrome(text)
    return string.sub(text, #text, #text) == string.sub(text, 1, 1)
end

print(isPalindrome("wow"))
print(isPalindrome("reverse"))
