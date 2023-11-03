function isPrime(n)
    if n == 1 then
		return false
	end
	
	i = 2
	while (i*i) <= n do 
		if n%i == 0 then
			return false
		end
		i = i+1
	end
	
	return true
end


function findMersennePrimes()
    p = 2
    mersennePrimes = {}

    while #mersennePrimes < 15 do
        mersenne = (2^p-1)
        if isPrime(mersenne) then
           table.insert(mersennePrimes, p)
		   print(p)
        end
        p = p + 1
    end
	
    return mersennePrimes
end

first15MersennePrimes = findMersennePrimes()

for i, p in ipairs(first15MersennePrimes) do
    print(string.format("Mersenne prime %d: 2^%d - 1", i, p))
end

print(table.concat(findMersennePrimes(),", "))
