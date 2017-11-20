def calculate (first_number, second_number, operation)
  if operation == "+"
    result = first_number + second_number
  elsif operation == "-"
    result = first_number - second_number
  elsif operation == "*"
    result = first_number * second_number
  elsif operation == "/"
    result = first_number / second_number
  else
  result = nil
  end
  return result
end

