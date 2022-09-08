class Solver
  def factorial(number)
    return 'Invalid Number' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    case [(number % 3).zero?, (number % 5).zero?]
    when [true, false]
      'fizz'
    when [false, true]
      'buzz'
    when [true, true]
      'fizzbuzz'
    else
      number.to_s
    end
  end
end
