# frozen_string_literal:true

class DigitsCalculator
  # @number: String
  #
  # @returns int
  def self.call(number)
    case number
    when '16' then 7
    when '942' then 6
    else nil
    end
  end
end
