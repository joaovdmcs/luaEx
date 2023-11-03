square1 = {side=6}
rectangle1 = {width=2,height=3}
circle1 = {radius=3}

function area(objeto)
	if objeto.side then
		return (objeto.side*objeto.side)
	elseif objeto.width and objeto.height then
		return (objeto.width*objeto.height)
	elseif objeto.radius then
		return (3.14*(objeto.radius*objeto.radius))
	else
		return nil
	end
end

function perimeter(objeto)
	if objeto.side then
		return (4*objeto.side)
	elseif objeto.width and objeto.height then
		return (2*objeto.width)+(2*objeto.height)
	elseif objeto.radius then
		return (3.14*(objeto.radius*2))
	else
		return nil
	end
end

print(perimeter(square1))
print(perimeter(rectangle1))
print(perimeter(circle1))
print(area(square1))
print(area(rectangle1))
print(area(circle1))
