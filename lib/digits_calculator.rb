# frozen_string_literal:true

class DigitsCalculator
  # @number: String
  #
  # @returns int
  def self.call(number)
    calculate(number)
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

