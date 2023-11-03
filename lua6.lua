function dividers(n)
	newList = {}
	for i = 1, n do
		if n%i == 0 then
			table.insert(newList, i)
		end
	end
	return table.concat(newList, ", ")
end

print(dividers(4))