class NumeralConverter

  def convert(number)
    num = ""
    by_five = number/5
    under_five = number % 5
    remainder = number % 10
    if number >= 1000
      num << "M"
      number -= 1000
    end
    if number >= 900
      num << "CM"
      number -= 900
    end
    if number >= 50
      num << "L"
      number -= 50
    end
    while number >= 10
      num << "X"
      number -= 10
    end
    if number == 9
      num << "IX"
      number -= 9
    end
    if number >= 5
      num << "V"
      number -= 5
    end
    if number < 4
      number.times { num << "I" }
    else
      num << "IV"
    end
    num
  end
end
