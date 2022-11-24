greet_user = fn
  %{name: name, age: age} -> "Hi #{name}, Congrats you survived #{age} years on plant earth!"
  %{name: name} -> "Hi #{name}, You are most Welcome!"
  _ -> "Please enter your name,age or name only, format: %{name: <>, age: <>} Thanks!"
  end

  IO.puts "#{greet_user.(%{name: 'Abdullah', age: '25'})}"
  IO.puts "#{greet_user.(%{name: 'Abdullah'})}"
  IO.puts "#{greet_user.('Abdullah')}"
