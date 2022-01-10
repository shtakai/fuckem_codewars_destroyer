def get_count(input_str)
  string_array = input_str.tr(' ', '').split('')
  string_hash = Hash.new(0)
  string_array.each do |s|
    string_hash[s.to_sym] += 1
  end

  result = 0
  result += string_hash[:a]
  result += string_hash[:e]
  result += string_hash[:i]
  result += string_hash[:o]
  result += string_hash[:u]
  result
end

puts get_count("abracadabra")
puts get_count("")
puts get_count("pear tree")

puts get_count("o a kak ushakov lil vo kashu kakao")
puts get_count("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokm")
