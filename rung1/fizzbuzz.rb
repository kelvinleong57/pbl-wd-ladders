for i in 0..100
   if i % 15 == 0 then
      puts "buzz fizz #{i}"
   end
   if i % 3 == 0 then
      puts "buzz #{i}"
   end
   if i % 5 == 0 then
      puts "fizz #{i}"
   end
end