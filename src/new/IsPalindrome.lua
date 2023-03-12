--[[
    "Way too complicated and scuffy but it gets the job done" - Kronos
    thanks for his opinion on the previous version I realized there is a easier way to do it
--]]

local function isPalindrome(text)
	local a = string.sub(text, #text, #text)
	local b = string.sub(text, 1, 1)
	if a == b then
		return true
	end
	return false
end

print("wow", isPalindrome("wow"))
print("deed", isPalindrome("deed"))
print("stranger", isPalindrome("stranger"))
print("noon", isPalindrome("noon"))
print("reverse", isPalindrome("reverse"))
