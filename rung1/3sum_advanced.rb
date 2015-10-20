def threesum_advanced(arr)

	arr.sort!

	for i in 0..arr.length-3
		a = arr[i]


	sort(S);
 for i=0 to n-3 do
    a = S[i];
    start = i+1;
    end = n-1;
    while (start < end) do
       b = S[start];
       c = S[end];
       if (a+b+c == 0) then
          output a, b, c;
          // Continue search for all triplet combinations summing to zero.
           start = start + 1
           end = end - 1
       else if (a+b+c > 0) then
          end = end - 1;
       else
          start = start + 1;
       end
    end
 end

end

numbers = [1, -2, 1, 4, 5]
numbers_2 = [1, 2, 1, 4, 5]

puts threesum(numbers)
puts threesum(numbers_2)