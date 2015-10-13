def threesum(input_array)

	for i in 0..input_array.length-3
		for j in i+1..input_array.length-2
			for k in j+1..input_array.length-1
				if input_array[i] + input_array[j] + input_array[k] == 0 then
					return true
				end
			end
		end
	end

	return false

end

numbers = [1, -2, 1, 4, 5]
numbers_2 = [1, 2, 1, 4, 5]

puts threesum(numbers)
puts threesum(numbers_2)