function isItPrime()
	tempArray = {}
	for i=1,50 do
		tempArray[i] = true
	end
	for	i = 2, math.floor(math.sqrt(50)) do
		if tempArray[i] then
			j = i*i
			while j <= 50 do
				tempArray[j] = false
				j = j + i
			end
		end
	end
	newArray = {}
	for i = 1, 50 do
		if tempArray[i] then
			table.insert(newArray,i)
		end
	end
	return table.concat(newArray,", ")
end


print(isItPrime())
