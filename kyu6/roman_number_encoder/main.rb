ROMAN_CASE = [
  ['I', 'V', 'X'],
  ['X', 'L', 'C'],
  ['C', 'D', 'M'],
  ['M', '', ''],
]

def solution(num)
  # max num is 4000
  reverse_number_str_arr = num.to_s.rjust(4, '0').split('').reverse

  reverse_str_arr = []

  reverse_number_str_arr.each_with_index do |n, i|
    reverse_str_arr << roman_for(num: n.to_i, current: ROMAN_CASE[i][0], upper: ROMAN_CASE[i][1], upper2: ROMAN_CASE[i][2])
  end

  reverse_str_arr.reverse.join
end

def roman_for(num:, current:, upper: '', upper2: '')
  roman = 
    if num == 4 
      "#{current}#{upper}"
    elsif num == 9
      "#{current}#{upper2}"
    elsif num == 5
      "#{upper}"
    elsif num > 5
      "#{upper}#{current * (num % 5)}"
    else
      "#{current * num}"
    end
  roman
end

# puts solution(0)
# puts solution(1)
# puts solution(2)
# puts solution(3)
# puts solution(4)
# puts solution(5)
# puts solution(6)
# puts solution(7)
# puts solution(8)
# puts solution(9)
# puts solution(10)


puts solution(1),'I', "solution(1),'I'"
puts solution(4),'IV', "solution(4),'IV'"
puts solution(6),'VI', "solution(6),'VI'"
puts solution(14),'XIV', "solution(14),'XIV"
puts solution(21),'XXI', "solution(21),'XXI'"
puts solution(89),'LXXXIX', "solution(89),'LXXXIX'"
puts solution(91),'XCI', "solution(91),'XCI'"
puts solution(984),'CMLXXXIV', "solution(984),'CMLXXXIV'"
puts solution(1000), 'M', 'solution(1000), M'
puts solution(1889),'MDCCCLXXXIX', "solution(1889),'MDCCCLXXXIX'"
puts solution(1989),'MCMLXXXIX', "solution(1989),'MCMLXXXIX'"
