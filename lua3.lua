function list(lista,n)

	newLista = {}
	for i = 1, #lista do
		if lista[i] > n then
			table.insert(newLista,lista[i])
		end
	end
	
	return table.concat(newLista, ", ")
end


print(list({1,7,2,3,0,6},4))