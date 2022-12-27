# frozen_string_literal:true

require 'logger'

$logger = Logger.new(STDOUT)
$logger.level = Logger::INFO

class DigitsCalculator
  # @number: String
  #
  # @returns int
  def self.call(number)
    raise NonStringArgumentError unless number.is_a?(String)
    Integer(number)

    calculate(number)
  rescue NonStringArgumentError => e
    $logger.error(e.message)
    raise e
  rescue ArgumentError => e
    $logger.error(e.message)
    raise NonNumericArgumentError
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

  class NonStringArgumentError < ArgumentError
    def initialize
      super('Non-String argument is not allowed')
    end
  end

  class NonNumericArgumentError < ArgumentError
    def initialize
      super('Non-Numeric String argument is not allowed')
    end
  end
end

