class NumeralConverter

  def numerals
    {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1
    }    
  end

  def convert(number)
    numeral = ""
    numerals.each do |k, v|
      while number >= v
        numeral << k
        number -= v
      end
    end
    numeral
  end

end
