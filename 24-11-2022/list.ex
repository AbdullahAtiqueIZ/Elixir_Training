cities = ["vienna", "melbourne", "osaka", "calgary", "sydney"]
test_list = ["aeo", "very", "fine", "collection", "of", "words", "enunciated"]
updated_test_list = Enum.map(test_list, fn(item) -> String.replace(item, 'e', 'z', global: false) end)
IO.puts updated_test_list
Enum.each(cities, &IO.puts/1)
