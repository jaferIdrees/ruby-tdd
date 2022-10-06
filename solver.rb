class Solver
  def factorial(num)
    raise StandardError.new 'Negative number recieved' if num < 0
    raise StandardError.new 'Non-integer number passed' unless num.integer?

    return 1 if num == 0 || num == 1

    num * factorial(num-1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)

    return 'fizzbuzz' if (num % 3 == 0 && num % 5 == 0)
    return 'fizz' if (num % 3).zero?
    'buzz' if (num % 5).zero?

  end
end

