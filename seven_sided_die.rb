# You have a function rand7() that generates a random integer from 1 to 7. Use it to write a function rand5() that generates a random integer from 1 to 5.

def rand5
  rand(1..5)
end

def rand7
  continue = true
  while continue
    first_value = rand5
    second_value = rand5
    sum = first_value + second_value
    if sum == 2 || sum == 3
      return 1
    elsif sum == 4
      return 2
    elsif sum == 5 && first_value > 1
      return 3
    elsif sum == 6 && first_value > 2
      return 4
    elsif sum == 7 && first_value > 2
      return 5
    elsif sum == 8
      return 6
    elsif sum == 9 || sum == 10
      return 7
    end
  end
end