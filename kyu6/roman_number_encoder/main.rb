def solution(num)
  # max num is 4000
  num1000 = (num / 1000)
  num500 = (num % 1000) / 500
  num100 = (num % 500) / 100
  num50 = (num % 100) / 50
  num10 = (num % 50) / 10
  num5 = (num % 10) / 5
  num1 = (num % 5)

  # "#{'M'*num1000}#{'D'*num500}#{'C'*num100}#{'L'*num50}#{'X'*num10}#{'V'*num5}#{'I'*num1}"
  # "#{'V'*num5}#{'I'*num1}"
  digit1 = roman_for(num: num1, current: 'I', upper: 'V')
  digit5 = roman_for(num: num5, current: 'V', upper: 'X')
  digit10 = roman_for(num: num10, current: 'X', upper: 'L')
  digit50 = roman_for(num: num50, current: 'L', upper: 'C')
  digit100 = roman_for(num: num100, current: 'C', upper: 'D')
  digit500 = roman_for(num: num500, current: 'D', upper: 'M')
  digit1000 = roman_for(num: num1000, current: 'M', upper: '')

  "#{digit1000}#{digit500}#{digit100}#{digit50}#{digit10}#{digit5}#{digit1}"
end

def roman_for(num:, current:, upper:)
  puts num
  roman = 
    if num % 5 == 4 
      "#{current}#{upper}"
    else
      "#{current * num}"
    end
  roman
end

puts solution(1)
puts solution(2)
puts solution(3)
puts solution(4)
puts solution(5)
puts solution(6)
puts solution(7)
puts solution(8)
puts solution(9)
puts solution(10)


# puts solution(1),'I', "solution(1),'I'"
# puts solution(4),'IV', "solution(4),'IV'"
# puts solution(6),'VI', "solution(6),'VI'"
# puts solution(14),'XIV', "solution(14),'XIV"
# puts solution(21),'XXI', "solution(21),'XXI'"
# puts solution(89),'LXXXIX', "solution(89),'LXXXIX'"
# puts solution(91),'XCI', "solution(91),'XCI'"
# puts solution(984),'CMLXXXIV', "solution(984),'CMLXXXIV'"
# puts solution(1000), 'M', 'solution(1000), M'
# puts solution(1889),'MDCCCLXXXIX', "solution(1889),'MDCCCLXXXIX'"
# puts solution(1989),'MCMLXXXIX', "solution(1989),'MCMLXXXIX'"
