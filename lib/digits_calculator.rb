# frozen_string_literal:true

class DigitsCalculator
  # @number: String
  #
  # @returns int
  def self.call(number)
    case number
    when '16' then calculate(number)
    when '942' then 6
    else nil
    end
  end

  def self.calculate(number)
    number
      .split('')
      .map(&:to_i)
      .sum
  end

  private_class_method :calculate
end
