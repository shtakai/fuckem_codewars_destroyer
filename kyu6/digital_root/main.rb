def digital_root_for_dummys(n)
  return 0 if n == 0
  return 9 if n % 9 == 0
  n % 9
end

def digital_root(n)
  return 0 if n == 0
  return n if n < 10

  arr = n.to_s.split('').map{ _1.to_i }
  digital_root(arr.sum)
end

puts(digital_root(16), 7)
puts(digital_root(942), 6)
puts(digital_root(132189), 6)
puts(digital_root(493193), 2)
