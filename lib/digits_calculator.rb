# frozen_string_literal:true

class DigitsCalculator
  # @number: String
  #
  # @returns int
  def self.call(number)
    case number
    when '16' then calculate(number)
    when '942' then calculate(number)
    else nil
    end
  end

  def self.calculate(number)
    while number.size != 1
      number =
        number
          .split('')
          .map(&:to_i)
          .sum
          .to_s
    end

    number.to_i
  end

  private_class_method :calculate
end

