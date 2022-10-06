class Solver
  def factorial(num)
    raise StandardError, 'Negative number recieved' if num.negative?
    raise StandardError, 'Non-integer number passed' unless num.integer?

    return 1 if [0, 1].include?(num)

    num * factorial(num - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?

    'buzz' if (num % 5).zero?
  end
end
