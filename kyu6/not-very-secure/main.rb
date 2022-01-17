def alphanumeric(str)
  !(str.split(' ').find { |s| s.match(/\A[\W\D]+\Z/) })
end


puts alphanumeric("PassW0rd") // true
puts alphanumeric("hell9 wo_rld") // false
