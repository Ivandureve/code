  def calculate(first_number, second_number, operator)
    case operator
    when "+" then first_number + second_number
    when "-" then first_number - second_number
    when "x" then first_number * second_number
    when "/" then first_number / second_number
    end
  end
