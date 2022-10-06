class Solver
  def factorial(num)
    raise StandardError.new 'Negative number recieved' if num < 0
    raise StandardError.new 'Non-integer number passed' unless num.integer?

    return 1 if num == 0 || num == 1

    return num * factorial(num-1)
  end
end