# frozen_string_literal: true

def fibs(number)
  fibo_sequence = []
  i = 0
  until i == number
    fibo_sequence << (i <= 1 ? i : fibo_sequence[i - 1] + fibo_sequence[i - 2])
    i += 1
  end
  fibo_sequence
end

def fibs_recursive(number)
  return [0] if number == 1
  return [0, 1] if number == 2

  array = fibs_recursive(number - 1)
  array << array[number - 3] + array[number - 2]
end
