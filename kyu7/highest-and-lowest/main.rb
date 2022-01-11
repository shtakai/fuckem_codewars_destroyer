def high_and_low(numbers)
  mm = numbers.split(' ').map(&:to_i).minmax
  "#{mm[1]} #{mm[0]}"
end

puts(high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4"), "42 -9")
