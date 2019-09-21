def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    array.sum
end

def multiply(num1, *num2)
    num2.unshift(num1).inject { |sum,n| sum * n }
end

def power(num, exponent)
    num ** exponent
end

def factorial(num)
    return 1 if num.zero?
    factors = (1..num.abs).to_a.reverse
    factors[0] = num if num.negative?
    factors.inject { |sum,n| sum * n }
end