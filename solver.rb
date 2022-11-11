class Solver
  def factorial(n)
    (2..n).reduce(1, :*)
  end

  def if_negative(n)
    return unless n < 0

    raise Exception, 'The number should not be less than 0'
  end

  def reverse(str)
    return unless str.is_a? String

    str.reverse
  end

  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      'fizzbuzz'
    elsif n % 3 == 0
      'fizz'
    elsif n % 5 == 0
      'buzz'
    else
      n.to_s
    end
  end
end
