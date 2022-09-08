class Solver
  def initialize
    @factorial = 1
  end

  def factorial(number)
    return 'Invalid Number' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end
end
