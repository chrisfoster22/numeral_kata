class ArabicConverter

  def convert(numeral)
    numerals = {
      "CM" => 900,
      "M" => 1000,
      "L" => 50,
      "IX" => 9,
      "X" => 10,
      "V" => 5,
      "I" => 1
    }
    arabic = 0
    numerals.each do |k, v|
      if numeral.include?(k)
        count =  numeral.scan(k).count
        count.times {arabic += v}
        numeral.slice!(k)
      end
    end
    arabic
  end

end
