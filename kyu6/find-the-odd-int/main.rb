def find_it(seq)
  hash = Hash.new(0)

  seq.each { |n| hash[n] += 1 }

  hash.select do |key, value|
    value.odd?
  end.keys.first
end

# puts find_it([1, 2, 2])

puts(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]), 5)
puts(find_it([1,1,2,-2,5,2,4,4,-1,-2,5]), -1)
puts(find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]), 5)
puts(find_it([10]), 10)
puts(find_it([1,1,1,1,1,1,10,1,1,1,1]), 10)
