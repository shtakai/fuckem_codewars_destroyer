def duplicate_encode(word)
  hash = Hash.new(0)
  word.split('').each do |w|
    hash[w.to_s.downcase] += 1
  end

  word.split('').map { |w| hash[w.to_s.downcase] > 1 ? ')' : '(' }.join
end



puts duplicate_encode("recede")
