# fn get_most_repeated_letter(string)

# end

farenheit_to_celcius = fn (temperature) ->
  (temperature - 32) * 0.5556
end

get_seconds = fn (days) ->
  seconds_in_one_day = (24*60)*60
  seconds_in_one_day * days
end

get_average_age = fn(map_1, map_2) ->
  (map_1[:age] + map_2[:age]) / 2
end

word_list = ['aplha', 'beta', 'gamma', 'nano', 'peto', 'manic']
[head | tail] = word_list
IO.puts "head of word_list #{head}"
IO.puts "tail of word_list #{tail}"

IO.puts "#{get_seconds.(2)}"

IO.puts "#{farenheit_to_celcius.(37)}"

IO.puts "#{get_average_age.(%{age: 56},%{age: 62})}"
