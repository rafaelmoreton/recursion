def fibs(number)
    fibo_sequence = []
    i = 0
    until i == number do
        case i
        when 0 then fibo_sequence << 0
        when 1 then fibo_sequence << 1
        else
            fibo_sequence << (fibo_sequence[i - 1] + fibo_sequence[i - 2])
        end
        i += 1
    end
    fibo_sequence
end

def fibs_recursive(number, fibo_sequence = [])
        if number < 2
            fibo_sequence << number 
        else
            fibo_sequence << (fibs_recursive(number - 1) + fibs_recursive(number - 2))
        end
    fibo_sequence
end

p fibs_recursive(1)