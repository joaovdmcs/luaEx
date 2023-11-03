function invert(number)
	actualString = tostring(number)
	print(actualString)
	newString = ""
	for i = string.len(actualString), 1,-1 do
		newString = newString .. string.sub(actualString,i,i)
	end
	return newString
end

print(invert(123))