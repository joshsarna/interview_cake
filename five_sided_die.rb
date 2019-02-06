# You have a function rand7() that generates a random integer from 1 to 7. Use it to write a function rand5() that generates a random integer from 1 to 5.

def rand7
  rand(1..7)
end

def rand5
  result = 6
  while result > 5
    result = rand7
  end
  result
end

# No solution can be guaranteed to terminate because there do not exist integers n, m for which 7 ** n = 5 * m
# This follows from the fundamental theorem of arithmetic, since 5 and 7 are both prime and a number that can be written as a product of n 7s cannot therefore have 5 as a factor