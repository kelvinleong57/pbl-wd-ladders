def threesum_advanced(arr)

	length = arr.length

	arr.sort!

	for i in 0..length-3
		a = arr[i]

		start_index = i + 1
		end_index = length - 1

		while (start_index < end_index) do
			b = arr[start_index]
			c = arr[end_index]

			if a + b + c == 0 then
				print a, " ", b, " ", c
				puts

				start_index = start_index + 1
				end_index = end_index - 1

			elsif a + b + c > 0 then
				end_index = end_index - 1
			
			# a + b + c < 0
			else
				start = start + 1
			end
		end
	end
end

numbers = [1, -2, 1, 4, -1, 3, 1, 3, 8]

threesum_advanced(numbers)