defmodule ResistorColorDuo do
  @color_codes %{black: 0, brown: 1, red: 2, orange: 3, yellow: 4, green: 5, blue: 6, violet: 7, grey: 8, white: 9}
  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value([first, second | _ ]) do
    Integer.undigits([@color_codes[first], @color_codes[second]])
  end
end
