class Integer
  def roman
    RomanNumbers.from(self)
  end
end

module RomanNumbers
  class << self
    def from(num)
      div,mod = num.divmod(100)
      hundreds = "C" * div
      hundreds + under_100(mod)
    end

    def under_100(num)
      div,mod = num.divmod(50)
      if num / 10 == 9
        return "XC" + under_10(num - 90)
      end
      fifties = "L" * div
      fifties + under_50(mod)
    end

    def under_50(num)
      div,mod = num.divmod(10)
      if div == 4
        tens = "XL"
      else
        tens = "X" * div
      end
      tens + under_10(mod)
    end

    def under_10(num)
      case num
      when 0..5
        under_5(num)
      when 6..8
        "V#{under_5(num-5)}"
      when 9
        'IX'
      when 10
        'X'
      end
    end

    def under_5(num)
      if num == 0
        ""
      elsif num < 4
        'I' * num 
      elsif num == 4
        "IV"
      elsif num == 5
        "V"
      end
    end

  end
end